class PatternsController < ApplicationController

  def index
    @user = User.find(params[:user_id])
  end

  def create
    # @pattern = Pattern.new(pattern_params)
    user = User.find(params:[:user_id])
    ravelry = Ravelry.find(params[:ravelry_id])
    @pattern = Pattern.new(user.id, ravelry.id)
    redirect_to user_pattern_path
  end

  private

  def pattern_params
    params.require(:pattern).permit(:user_id, :ravelry_id)
  end

end