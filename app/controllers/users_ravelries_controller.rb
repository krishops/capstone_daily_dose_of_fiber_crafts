class UsersRavelriesController < ApplicationController

  def create
    user = User.find(params:[user_id])
    ravelry_ids = params[:ravelry_ids]
    user.ravelries = Ravelry.find(ravelry_ids)
    redirect_to user_path
  end

  private

  def user_ravelry_params
    params.require(:user_ravelry).permit(:user_id, :ravelry_id)
  end

end