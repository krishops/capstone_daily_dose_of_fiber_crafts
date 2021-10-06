class RavelriesController < ApplicationController

  def index
    # @user = User.find(params[:user_id])
    @patterns = Ravelry.all
  end

  def search
    # if params[:pattern_name]
    #   @searched_pattern = Ravelry.where('pattern_name ILIKE ?', "%#{params[:pattern_name]}%")
    # else
      # @patterns = Ravelry.all
    # @patterns = Ravelry.search(params[:search])
    # if current_user != nil
    #   @user = current_user
    # end
    # redirect_to new_user_pattern_path(@user)
    if params[:search].blank?
      redirect_to search_path and return
    else
      @parameter = params[:search]
      @results = Ravelry.all.where("lower(pattern_name) ilike :search", search: "%#{@parameter}%")
    end
  end

  def update
    @user = User.find(params[:user_id])
    @ravelry = Ravelry.find(params[:id])
  end

  def show
    @patterns = Ravelry.all
    render :show
  end

  # def add_pattern
  #   puts "test"
  #   # @user = current_user
  #   # @ravelry = Ravelry.find(params[:id])
  #   # @user.ravelries << @ravelry
  #   # flash[:notice] = 'Pattern was saved.'
  #   # redirect_to user_path(@user)
  # end

  def create
    @user = current_user
    @ravelry = Ravelry.find(params[:id])
    @user.ravelries << @ravelry
    flash[:notice] = 'Pattern was saved.'
    redirect_to user_path(@user)
  end

  private

  def ravelry_params
    params.require(:ravelry).permit(:pattern_name, :ravelry_id, :search, :id)
  end



end