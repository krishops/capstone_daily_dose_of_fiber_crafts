class LayoutsController < ApplicationController

  def application
    @user = User.find(params[:user_id])
    render :application
  end

end