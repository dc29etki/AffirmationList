class HomeController < ApplicationController
  def index
    @blogs = Blog.where(pinned: true).order(id: "ASC");
  end
end
