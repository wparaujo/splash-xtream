require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'
require './models/user'

get '/' do
    erb :index
end

post '/submit' do
	if User.exists?(email: params[:user][:email])
		"email already exsts"
	else 
		@user = User.new(params[:user])
		if @user.save
			redirect '/'
		else
			"Model not was save."
		end
	end
end

get '/6384BE62BB1959FB3921C24934E93/users' do
	@users = User.all
	erb :users
end