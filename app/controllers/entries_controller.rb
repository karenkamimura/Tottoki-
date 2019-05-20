class EntriesController < ApplicationController

  def index
    @entries = Entry.page(params[:page]).reverse_order
    @rank = Entry.find(Favorite.group(:entry_id).order('count(entry_id) desc').limit(5).pluck(:entry_id))
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def rank
    @rank = Entry.find(Favorite.group(:entry_id).order('count(entry_id) desc').limit(5).pluck(:entry_id))
  end

  private

  def set_blog
    @blog = Blog.find(params[:id])
  end
end
