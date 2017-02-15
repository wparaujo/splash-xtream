require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'
require './models/user'

get '/' do
    erb :index
end

post '/submit' do
	@user = User.new(params[:user])

	if @user.save
		redirect '/'
	else
		"Model not was save."
	end	
end

get '/users' do
	@users = User.all
	erb :users
end