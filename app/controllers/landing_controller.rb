class LandingController < ApplicationController

  def index

    @prop_to_vue = 'Variable from Rails View'
    render 'landing/index'

  end

end
