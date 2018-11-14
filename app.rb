require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    "hello world"
  end

  run! if app_file == $0

end
