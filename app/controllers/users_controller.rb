class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update]
	before_action :require_user, only: [:edit, :update, :destroy]
	before_action :require_same_user, only: [:edit, :update, :destroy]
	before_action :require_admin, only: [:destroy]
	
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			session[:userid] = @user.id
			flash[:success] = "User created successfully"
			redirect_to user_path(@user)
		else
			render 'new'
		end
	end

	def show
		
	end

	def index
		@users = User.all
	end
	
	def edit

	end

	def update
		if @user.update
			flash[:success] = "User updated successfully"
			redirect_to user_path(@user)
		else
			render 'edit'
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		flash[:danger] = "User and all articles created by users have been destroyed"
		redirect_to users_path 
	end

	private
		def user_params
			params.require(:user).permit(:name,:password,:email)
		end	

		def set_user
			@user = User.find(params[:id])
		end
		
		def require_same_user
			if current_user != @user and !current_user.admin?
				flash[:danger] = " You can not perform this action "
				redirect_to users_path
			end
		end	
		def require_admin
			if logged_in?
				if !current_user.admin?
					flash[:danger] = "You need to sign in as admin to perform this action" 
					redirect_to users_path
				end
			else
				flash[:danger] = "You need to sign in as admin to perform this action" 
				redirect_to users_path
			end
		end
end
