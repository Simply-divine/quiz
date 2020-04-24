class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update]
	before_action :require_same_user, only: [:edit, :update, :destroy, :show]
	before_action :require_admin, only: [:destroy, :index]
	
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id
			flash[:success] = "User created successfully"
			redirect_to root_path
		else
			flash[:warning] = "Something went wrong, plz try again!"
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
		if @user.update(user_params)
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
		redirect_to root_path
	end

	private 
		def user_params
			params.require(:user).permit(:name, :email, :password)
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
