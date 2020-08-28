class BlogController < ApplicationController
  def index
    @blogs = Blog.all.order("id ASC");
  end
  def viewblog
    @blog = Blog.find(params[:id])
  end
end
