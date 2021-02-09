require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
  "hello my name is Jimmy"
end

get '/hamster' do
  erb(:index)
end
