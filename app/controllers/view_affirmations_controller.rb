class ViewAffirmationsController < ApplicationController
  before_action :authenticate_user!
  
  helper_method :is_fav
  
  def is_fav(a)
    @favories.each do |f|
      if f.affirmation == a.affirmation
        return true
      end
    end
    return false
  end
  
  def index
    @category = params[:category]
    @sub = params[:sub]
    @sub[0] = @sub[0].capitalize
    
    @favories = Favorite.where(user_id: current_user.id);
    
    


    if @category == 'coronavirus'
      @cat = Category.find(10)
      @affirmations = Success.where('tags like ?', @sub) + LoveAndRelationship.where('tags like ?', @sub) + SelfFulfillment.where('tags like ?', @sub) + Lifestyle.where('tags like ?', @sub) + PhysicalHealth.where('tags like ?', @sub) + MentalHealth.where('tags like ?', @sub) + Spirituality.where('tags like ?', @sub) + SafeAndSecure.where('tags like ?', @sub)
    elsif @category == 'politics'
        @cat = Category.find(9)
        @affirmations = Success.where('tags like ?', @sub) + LoveAndRelationship.where('tags like ?', @sub) + SelfFulfillment.where('tags like ?', @sub) + Lifestyle.where('tags like ?', @sub) + PhysicalHealth.where('tags like ?', @sub) + MentalHealth.where('tags like ?', @sub) + Spirituality.where('tags like ?', @sub) + SafeAndSecure.where('tags like ?', @sub)
elsif @category == 'success'
      puts @category
      @cat = Category.find(1)
      @affirmations = Success.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + LoveAndRelationship.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + SelfFulfillment.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + Lifestyle.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + PhysicalHealth.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + MentalHealth.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + Spirituality.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + SafeAndSecure.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub)
    elsif @category == 'love_relationships'
      @cat = Category.find(2)
      @affirmations = Success.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + LoveAndRelationship.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + SelfFulfillment.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + Lifestyle.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + PhysicalHealth.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + MentalHealth.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + Spirituality.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + SafeAndSecure.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub)
    elsif @category == 'self_fulfillment'
      @cat = Category.find(3)
      @affirmations = Success.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + LoveAndRelationship.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + SelfFulfillment.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + Lifestyle.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + PhysicalHealth.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + MentalHealth.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + Spirituality.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + SafeAndSecure.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub)
    elsif @category == 'lifestyle'
      @cat = Category.find(4)
      @affirmations = Success.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + LoveAndRelationship.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + SelfFulfillment.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + Lifestyle.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + PhysicalHealth.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + MentalHealth.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + Spirituality.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + SafeAndSecure.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub)
    elsif @category == 'physical_health'
      @cat = Category.find(5)
      @affirmations = Success.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + LoveAndRelationship.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + SelfFulfillment.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + Lifestyle.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + PhysicalHealth.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + MentalHealth.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + Spirituality.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + SafeAndSecure.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub)
    elsif @category == 'mental_health'
      @cat = Category.find(6)
      @affirmations = Success.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + LoveAndRelationship.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + SelfFulfillment.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + Lifestyle.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + PhysicalHealth.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + MentalHealth.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + Spirituality.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + SafeAndSecure.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub)
    elsif @category == 'spirituality'
      @cat = Category.find(7)
      @affirmations = Success.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + LoveAndRelationship.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + SelfFulfillment.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + Lifestyle.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + PhysicalHealth.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + MentalHealth.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + Spirituality.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + SafeAndSecure.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub)
    elsif @category == 'safe_secure'
      @cat = Category.find(8)
      @affirmations = Success.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + LoveAndRelationship.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + SelfFulfillment.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + Lifestyle.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + PhysicalHealth.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + MentalHealth.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + Spirituality.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub) + SafeAndSecure.where('sub1 like ? OR sub2 like ? OR sub3 like ? OR sub4 like ? OR sub5 like ?', @sub, @sub, @sub, @sub, @sub)
    end
  end
  
  
  
end
