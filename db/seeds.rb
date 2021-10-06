# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# Figure out how to store API call in seed
class Seed
include HTTParty

  def self.begin
    Ravelry.destroy_all
    seed = Seed.new
    seed.add_patterns
  end

  def add_patterns
    auth = {username: 'read-97a558d4a7b688d6c3b94df4170ef72a', password: 'xL0iLOwxoAYoE6tzGtdXc4hjPhBMLDvpNlFXnoI6'}
    search_results = HTTParty.get('https://api.ravelry.com/patterns/search.json?page_size=1000',
      basic_auth: auth)
    search_results["patterns"].each do |result|
      pattern = Ravelry.create(
        pattern_name: result["name"],
        ravelry_id: result["id"],
        web_link: result["permalink"],
        picture: result["first_photo"] ? result["first_photo"]["small_url"] : "" 
      ) 
      # pattern_details = HTTParty.get('https://api.ravelry.com/patterns.json?ids=' + result["id"],
      #   basic_auth: auth)
      #   pattern_details["patterns"][result["id"]].each do |result|
      # full_pattern = Pattern.create(
      #   pattern_name: result["name"],
      #   web_link: result["permalink"],
      #   craft_type: result[""]

      # )

      
      puts "pattern: #{pattern.pattern_name}, id: #{pattern.ravelry_id}, link: #{pattern.web_link}, picture: #{pattern.picture}"
    end
  end
end

Seed.begin
