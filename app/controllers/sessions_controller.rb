class SessionsController < ApplicationController
	before_action
	def new
	end

	def create
		user = User.find_by(email: params[:session][:email].downcase)
		if user and user.authenticate(params[:session][:password])
			session[:user_id] = user.id
			flash[:success] = "You have successfully logged in"
			redirect_to root_path
		else
			render 'new'	
		end	
	end
	
	def destroy
		session[:user_id] = nil
		flash[:success] = "You have logged out successfully"
		redirect_to root_path
	end
end
