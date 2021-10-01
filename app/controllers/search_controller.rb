class SearchController < ApplicationController
  include HTTParty

  def index
    auth = {username: 'read-97a558d4a7b688d6c3b94df4170ef72a', password: 'xL0iLOwxoAYoE6tzGtdXc4hjPhBMLDvpNlFXnoI6'}
    search_results = HTTParty.get('https://api.ravelry.com/patterns/search.json',
      basic_auth: auth)
    
    render :index
  end

end