class ApplicationController < ActionController::Base

  def logged_in?
    if current_user != nil
      @user = current_user
    end
  end
end
