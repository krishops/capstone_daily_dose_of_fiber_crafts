class LandingController < ApplicationController
  def index
    if current_user != nil
      @user = current_user
    end
  end
end