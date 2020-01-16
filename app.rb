require 'sinatra/base'
require 'shotgun'

class Battle < Sinatra::Base
  set :session_secret, "beep boop"
  enable :sessions
  
  get '/' do
    erb :index
  end
  
  post '/names' do
    session[:p1] = params[:p1]
    session[:p2] = params[:p2]
    redirect '/play'
  end
  
  get '/play' do
    @p1 = session[:p1]
    @p2 = session[:p2]
    @attacking_player = session[:attacking_player]
    erb :play
  end
  
  post '/play' do
    session[:attacking_player] = params[:attack]
    redirect '/play'
  end
  
  run! if app_file == $0
end
