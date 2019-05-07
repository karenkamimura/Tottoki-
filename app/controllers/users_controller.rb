class UsersController < ApplicationController

	def top
	end

	def about
	end

	def index
		@user = current_user
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
        @user.update(user_params)
        redirect_to user_path(@user.id)
	end

	def destroy
		@user = current_user
        @users = User.find(params[:format])
        @users.destroy
        if current_user.id == @user.id || current_user.admin == true
        end
        redirect_to root_path
	end

	def user_params
		params.require(:user).permit(:username, :profile_image)
	end

end

