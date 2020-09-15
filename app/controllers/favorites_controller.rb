class FavoritesController < ApplicationController
  def create
    @favorite = Favorite.new(favorite_params)
    if @favorite.save
      flash.notice = "Favorite Saved"
      redirect_back(fallback_location: root_path)
    else 
      puts 'fail'
      redirect_back(fallback_location: root_path)
    end
  end
  
  def favorite_params
      params.require(:favorite).permit(:user_id, :affirmation, :cat, :sub)
  end
    
  def index
    @affirmations = Favorite.where(user_id: current_user.id)
  end
  
  def show
  end

  def destroy
    Favorite.find(params[:id]).destroy
    flash.alert = "Favorite Deleted"
    redirect_back(fallback_location: root_path)
  end
  
end
