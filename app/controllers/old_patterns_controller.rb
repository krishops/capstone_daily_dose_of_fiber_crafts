class PatternsController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @pattern = @user.pattern
    render: index
  end

  def new
    @user = User.find(params[:user_id])
    @pattern = @user.patterns.new
    render :new
  end

  def edit
    @user = User.find(params[:user_id])
    @pattern = Pattern.find(params[:id])
    render :edit
  end

  private
  def pattern_params
    params.require(:pattern).permit(:pattern_name, :picture, :web_link, :user_id, :craft_type, :ravelry_id)

end