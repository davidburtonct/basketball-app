require './config/environment'
require 'sinatra'
require_relative "../models/skill.rb"
require_relative "../models/user_stat.rb"
require_relative "../models/user.rb"
require_relative "../models/stat.rb"
class ApplicationController < Sinatra::Base
	configure do
		set :public_folder, 'public'
		set :views, 'app/views'
		enable :sessions
    	set :session_secret, "hello"
	end
	helpers do 
		def logged_in?
			session["user_id"]
		end
		def current_user
			User.find_by_id(session["user_id"])
		end
	end

	get '/' do
		erb :index
	
  	end
	post '/signup' do
		puts params
		@user = User.create(:email => params["email"],:password => params["password"],:birthday => params["birthday"])
		session["user_id"]= @user.id
		redirect "/log_stat"
	end	
	get '/login' do
		erb :login
	end
	post '/login' do
		@user = User.find_by_email(params["email"])
		if @user && @user.password == params["password"]
			session["user_id"]= @user.id
		else
			redirect '/'
		end	
	end
	get '/logout' do
		session.destroy
		redirect '/login'
	end
	get '/log_stat' do
		@skills=Skill.all
		erb :log_stat
	end
	post '/log_stat' do
		puts params
		length=params.length-1
		skill=params["skill"]
		params.delete("skill")
		skill=Skill.find_by_name(skill)
		params.each do |key, value|
			if value != ""
				user_stat=UserStat.new
				user_stat.skill_id=skill.id
				user_stat.stat_id=key.to_i
				user_stat.stat_value=value.to_i
				user_stat.user_id=session["user_id"].to_i
				user_stat.save	
			end	
		end
		@name="david"
		redirect "/users/#{session['user_id']}"
	end
	get '/users/:id' do
		@major_key=User.find_by_id(params["id"])
		erb :user
	end

  	
end
