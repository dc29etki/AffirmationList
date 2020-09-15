class ViewAffirmationsController < ApplicationController
  before_action :authenticate_user!
  def index
    @category = params[:category]
    @sub = params[:sub]
    @sub[0] = @sub[0].capitalize
    
    
    if @category == 'success'
      puts @category
      @cat = Category.find(1)
      @affirmations = Success.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub)
    elsif @category == 'love_relationships'
      @cat = Category.find(2)
      @affirmations = LoveAndRelationship.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub)
    elsif @category == 'self_fulfillment'
      @cat = Category.find(3)
      @affirmations = SelfFulfillment.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub)
    elsif @category == 'lifestyle'
      @cat = Category.find(4)
      @affirmations = Lifestyle.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub)
    elsif @category == 'physical_health'
      @cat = Category.find(5)
      @affirmations = PhysicalHealth.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub)
    elsif @category == 'mental_health'
      @cat = Category.find(6)
      @affirmations = MentalHealth.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub)
    elsif @category == 'spirituality'
      @cat = Category.find(7)
      @affirmations = Spirituality.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub)
    elsif @category == 'safe_secure'
      @cat = Category.find(8)
      @affirmations = SafeAndSecure.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub)
    end
    
  end
end
