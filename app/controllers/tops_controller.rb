class TopsController < ApplicationController
	def index
		@users = User.all
	end
	
	
	def private
  		def current_user
    		@current_user ||= User.find_by_id(session[:user_id])
  		end
  	end

end
