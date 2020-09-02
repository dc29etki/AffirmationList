class BlogController < ApplicationController
  def index
    @blogs = Blog.order("id ASC");
  end
  def viewblog
    @blog = Blog.find(params[:id])
  end
end
