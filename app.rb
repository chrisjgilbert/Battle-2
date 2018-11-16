require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
    @game.attack(@game.waiting_player)
    @game.turn
    redirect '/winner' if @game.winner
    erb :attack
  end

  get '/winner' do
    erb :winner
  end

  run! if app_file == $0

end
