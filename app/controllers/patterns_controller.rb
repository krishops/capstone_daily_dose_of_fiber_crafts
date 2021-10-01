class PatternsController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @pattern - @user.pattern
    render: index
  end

end