require 'sinatra'

set :port, 8080
set :static, true
set :public_folder, "static"
set :views, "views"

get '/' do 
  return 'Hello world!'
end

get '/hello/' do 
  erb :hello_form
end

post '/hello/' do 
  greeting = params[:greeting] || 'Hi'
  name = params[:name] || 'Ononon'
  
  erb :index, :locals => {'greeting' => greeting, 'name' => name}
end
