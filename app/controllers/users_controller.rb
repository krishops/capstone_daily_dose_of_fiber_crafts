class UsersController < ApplicationController

  def patterns
    @patterns = RavelryUser.find_by(:user_id)
  end

end
