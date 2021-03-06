class FavoritesController < ApplicationController
  before_action :set_entry
  def create
    @favorite = Favorite.create(user_id: current_user.id, entry_id: params[:entry_id])
    @favorites = Favorite.where(entry_id: params[:entry_id])
    @entry.reload
  end

  def destroy
    favorite = Favorite.find_by(user_id: current_user.id, entry_id: params[:entry_id])
    favorite.destroy
    @favorites = Favorite.where(entry_id: params[:entry_id])
    @entry.reload
  end

  private

  def set_entry
    @entry = Entry.find(params[:entry_id])
  end
end
