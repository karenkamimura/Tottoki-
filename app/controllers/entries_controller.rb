class EntriesController < ApplicationController
  def index
    @entries = Entry.all
    # @entries = @blog.entries.order('published desc')
  end

  def show
    @entry = Entry.find(params[:id])
  end

  private

  def set_blog
    @blog = Blog.find(params[:id])
  end
end
