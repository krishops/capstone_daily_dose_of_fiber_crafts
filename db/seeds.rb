# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# Figure out how to store API call in seed
class Seed
require 'HTTParty'

  def self.begin
    seed = Seed.new
    seed.add_patterns
  end

  def add_patterns
    search_results = HTTParty.get('https://api.ravelry.com/patterns/search.json',
      basic_auth: 'read-97a558d4a7b688d6c3b94df4170ef72a', 'xL0iLOwxoAYoE6tzGtdXc4hjPhBMLDvpNlFXnoI6')
    search_results.each do |result|
      pattern = RavelryDatabase.create(
        pattern_name: result["name"],
        ravelry_id: result["id"],
        web_link: result["permalink"],
        picture: result["first_photo"]["square_url"]
      )
