class UsersController < ApplicationController
	def new
		@users = User.new
	end

	def create
		@user =  User.new(user_params)
		if @user.save
			redirect_to users_path
		else
			render 'new'
		end
	end

	def private
		def post_params
		params[:user].permit(:email, :password, :password_confirmation)
	end
end
