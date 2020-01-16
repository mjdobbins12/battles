require 'sinatra'
require 'shotgun'

set :session_secret, "here be dragons"

get '/' do
  'Yo dude'
end

get '/secret' do
  "I'm a giraffe!"
end

get '/random-cat' do
  @name = ["Fuzzy", "Pumpernickel", "Slim Shady"].sample
  erb :index
end

get '/named-cat' do
  @name = params[:name]
  erb :index
end

get '/cat-form' do
  erb :cat_form
end

post '/named-cat' do
  @name = params[:name]
  erb :index
end
