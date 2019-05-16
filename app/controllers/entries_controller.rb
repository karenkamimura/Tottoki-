class EntriesController < ApplicationController

  def index
    @entries = Entry.page(params[:page]).reverse_order
  end
    # @entries = @blog.entries.order('published desc')

  def show
    @entry = Entry.find(params[:id])

  end

  private

  def set_blog
    @blog = Blog.find(params[:id])
  end
end
