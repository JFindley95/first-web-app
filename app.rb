require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
  "hello my name is Jimmy"
end

get '/random-hamster' do
  @name = ["almond", "misty", "nutty"].sample.capitalize
  erb(:index)
end

post '/named-hamster' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/hamster-form' do
  erb(:hamster_form)
end
