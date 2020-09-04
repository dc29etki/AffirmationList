class ViewAffirmationsController < ApplicationController
  before_action :authenticate_user!
  def index
    category = params[:category]
    category[0] = category[0].capitalize
    sub = params[:sub]
    sub[0] = sub[0].capitalize
    
    p sub
    
    if category.casecmp('success')
      p category
      @affirmations = Success.where('sub1=? OR sub2=? OR sub3=? OR sub4=? OR sub5=?', sub, sub, sub, sub, sub)
    end
    
  end
end
