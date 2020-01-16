require 'sinatra/base'
require 'shotgun'

class Battle < Sinatra::Base
  get '/' do
    erb :index
  end
  
  post '/names' do
    @p1 = params[:p1]
    @p2 = params[:p2]
    erb :play
  end
  
  run! if app_file == $0
end
