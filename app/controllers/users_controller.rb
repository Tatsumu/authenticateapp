class UsersController < ApplicationController
	def new
		@users = User.new
	end

	def create
		@users =  User.new(user_params)
		if @users.save
			redirect_to users_path
		else
			render 'new'
		end
	end

	def private
		def user_params
			params[:user].permit(:email, :password, :password_confirmation)
		end
	end
end
