class BlogController < ApplicationController
  def index
    @pinned = Blog.where(pinned: true).order("id ASC");
    @blogs = Blog.where(pinned: false).order("id ASC");
  end
  def viewblog
    @blog = Blog.find(params[:id])
  end
end
