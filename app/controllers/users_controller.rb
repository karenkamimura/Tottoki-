class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:about, :top]

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
    @favorite_entries = Favorite.where(user: @user).page(params[:page]).reverse_order
    @favorite = Favorite.find_by(user_id: current_user.id, entry_id: params[:entry_id])
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
    @users = User.find(params[:id])
    @users.destroy
    if current_user.admin == true

      redirect_to users_path
    else
      redirect_to root_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :profile_image)
  end
end
