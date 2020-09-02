class HomeController < ApplicationController
  def index
    @blogs = Blog.where(pinned: true)
  end
end
