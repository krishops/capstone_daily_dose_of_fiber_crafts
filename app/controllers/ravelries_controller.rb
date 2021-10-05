class RavelriesController < ApplicationController

  def index
    @user = User.find(params[:user_id])
  end

  def search
    # if params[:pattern_name]
    #   @searched_pattern = Ravelry.where('pattern_name ILIKE ?', "%#{params[:pattern_name]}%")
    # else
      # @patterns = Ravelry.all
    @patterns = Ravelry.search(params[:search])
    if current_user != nil
      @user = current_user
    end
  end

  def update
    @user = User.find(params[:user_id])
    @ravelry = Ravelry.find(params[:id])
  end

  def show
    @user = User.find(params[:user_id])
    @patterns = RavelryUser.find_by(@user.id)
    render :show
  end


  private

  def ravelry_params
    params.require(:ravelry).permit(:pattern_name, :ravelry_id, :search)
  end



end