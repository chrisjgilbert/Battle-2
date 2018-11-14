require 'sinatra/base'
require_relative './lib/player.rb'

class Battle < Sinatra::Base

  DEFAULT_POINTS = 100

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_1_hit_points = DEFAULT_POINTS
    @player_2_hit_points = 60
    erb :play
  end

  get '/attack' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb :attack
  end

  run! if app_file == $0

end
