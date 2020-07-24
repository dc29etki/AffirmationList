class WelcomeController < ApplicationController
  def result
    @affirmation = Affirmation.find(Affirmation.pluck(:id).sample)
  end
end
