class UsersController < ApplicationController
  before_action :authenticate_user!

  def patterns
  #   @user = User.find(params[:id])
  #   @patterns = RavelryUser.find_by(@user.id)
  #   render :patterns
  # end

  # def show
    @user = current_user
    @patterns = Pattern.where(:user_id => @user.id)
  end

end
