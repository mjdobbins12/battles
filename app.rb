require 'sinatra'
require 'shotgun'

set :session_secret, "here be dragons"

get '/' do
  'Hello world!'
end

get '/secret' do
  'Video killed the radio star'
end

get '/test' do
  'test'
end

get '/test2' do
  'test2'
end

get '/test3' do
  'test4'
end

get '/cat' do
  erb(:index)
end
