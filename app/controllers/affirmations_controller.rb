class AffirmationsController < ApplicationController
  def index
    @affirmations = Affirmation.all.order("id ASC")
    @categories = Category.all.order("id ASC")
  end
end
