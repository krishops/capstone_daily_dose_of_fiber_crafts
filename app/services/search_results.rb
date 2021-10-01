class SearchResults
include HTTParty

  def initialize(search_results)
    @search_results = search_results
  end

  def get_search_results
    response = HTTParty.get('https://api.ravelry.com/patterns/search.json')
  end

end