class RavelriesController < ApplicationController

  def index
    # if params[:pattern_name]
    #   @searched_pattern = Ravelry.where('pattern_name ILIKE ?', "%#{params[:pattern_name]}%")
    # else
      # @patterns = Ravelry.all
    @patterns = Ravelry.search(params[:search])
  end

  def update
    @user = User.find(params[:user_id])
    @ravelry = Ravelry.find(params[:id])
  end


  private

  def ravelry_params
    params.require(:ravelry).permit(:pattern_name, :ravelry_id, :search)
  end



end