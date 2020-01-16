require 'sinatra/base'
require 'shotgun'

class Battles < Sinatra::Base
  get '/' do
    'Welcome to Battles'
  end
  
  run! if app_file == $0
end
