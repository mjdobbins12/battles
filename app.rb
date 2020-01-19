require 'sinatra/base'
require 'shotgun'
require_relative './lib/player'

class Battle < Sinatra::Base
  set :session_secret, "beep boop"
  enable :sessions
  
  get '/' do
    erb :index
  end
  
  post '/names' do
    session[:p1] = Player.new(params[:p1])
    session[:p2] = Player.new(params[:p2])
    redirect '/play'
  end
  
  get '/play' do
    @p1 = session[:p1].name
    @p2 = session[:p2].name
    @attacking_player = session[:attacking_player]
    erb :play
  end
  
  post '/play' do
    session[:attacking_player] = params[:attack1] || params[:attack2]
    redirect '/play'
  end
  
  run! if app_file == $0
end
