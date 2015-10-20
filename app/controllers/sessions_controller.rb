class SessionsController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.find_by(email: params[:session][:email])
    	if user && user.authenticate(params[:session][:password_digest])
      		session[:user_id] = @user.id
      		redirect_to root_path
    	else
      		flash[:error] = 'メールアドレスもしくはパスワードが正しくありません'
      		render 'new'
    	end
	end

  def destroy
    sessoin[:user_id] = nil
    redirect_to root_path
  end

end
