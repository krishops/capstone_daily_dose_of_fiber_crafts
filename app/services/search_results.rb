class SearchResults
include HTTParty

  def initialize(search_results)
    @search_results = search_results
  end

  def get_search_results
  end

end