class ViewAffirmationsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @category = params[:category]
    @sub = params[:sub]
    @sub[0] = @sub[0].capitalize

    if @category == 'coronavirus'
      @cat = Category.find(10)
      @affirmations = Success.where('tags like ?', @sub) + LoveAndRelationship.where('tags like ?', @sub) + SelfFulfillment.where('tags like ?', @sub) + Lifestyle.where('tags like ?', @sub) + PhysicalHealth.where('tags like ?', @sub) + MentalHealth.where('tags like ?', @sub) + Spirituality.where('tags like ?', @sub) + SafeAndSecure.where('tags like ?', @sub)
elsif @category == 'success'
      puts @category
      @cat = Category.find(1)
      @affirmations = Success.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + LoveAndRelationship.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + SelfFulfillment.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + Lifestyle.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + PhysicalHealth.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + MentalHealth.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + Spirituality.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + SafeAndSecure.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub)
    elsif @category == 'love_relationships'
      @cat = Category.find(2)
      @affirmations = Success.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + LoveAndRelationship.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + SelfFulfillment.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + Lifestyle.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + PhysicalHealth.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + MentalHealth.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + Spirituality.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + SafeAndSecure.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub)
    elsif @category == 'self_fulfillment'
      @cat = Category.find(3)
      @affirmations = Success.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + LoveAndRelationship.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + SelfFulfillment.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + Lifestyle.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + PhysicalHealth.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + MentalHealth.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + Spirituality.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + SafeAndSecure.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub)
    elsif @category == 'lifestyle'
      @cat = Category.find(4)
      @affirmations = Success.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + LoveAndRelationship.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + SelfFulfillment.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + Lifestyle.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + PhysicalHealth.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + MentalHealth.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + Spirituality.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + SafeAndSecure.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub)
    elsif @category == 'physical_health'
      @cat = Category.find(5)
      @affirmations = Success.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + LoveAndRelationship.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + SelfFulfillment.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + Lifestyle.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + PhysicalHealth.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + MentalHealth.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + Spirituality.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + SafeAndSecure.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub)
    elsif @category == 'mental_health'
      @cat = Category.find(6)
      @affirmations = Success.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + LoveAndRelationship.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + SelfFulfillment.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + Lifestyle.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + PhysicalHealth.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + MentalHealth.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + Spirituality.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + SafeAndSecure.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub)
    elsif @category == 'spirituality'
      @cat = Category.find(7)
      @affirmations = Success.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + LoveAndRelationship.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + SelfFulfillment.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + Lifestyle.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + PhysicalHealth.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + MentalHealth.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + Spirituality.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + SafeAndSecure.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub)
    elsif @category == 'safe_secure'
      @cat = Category.find(8)
      @affirmations = Success.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + LoveAndRelationship.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + SelfFulfillment.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + Lifestyle.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + PhysicalHealth.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + MentalHealth.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + Spirituality.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub) + SafeAndSecure.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', @sub, @sub, @sub, @sub, @sub)
    end
    
  end
end
