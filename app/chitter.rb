require 'sinatra/base'
require 'tilt/erb'
require_relative 'models/user'

class Chitter < Sinatra::Base

	# enable :sessions
	# set :session_secret, 'super secret'
  
  get '/' do
    "Welcome, elaine" #hardcoded in - CHANGE!!
  end

  get '/users/new' do
    erb :'users/new'
  end

  post '/users' do
  	user = User.create(username: params[:username], email: params[:email], password: params[:password])
  	session[:user_id] = user.id
  	redirect to ('/')
  end

  helpers do
 		def current_user
   		@current_user #||= User.get(session[:user_id])
 		end
 	end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
