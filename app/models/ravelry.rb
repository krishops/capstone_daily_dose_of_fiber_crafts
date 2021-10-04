class Ravelry < ApplicationRecord
  has_and_belongs_to_many(:users)
  
  validates :pattern_name, presence: true
  validates :ravelry_id, presence: true
  validates :web_link, presence: true
  validates :picture, presence: true

  def self.search(search)
    if search
      searched_pattern = Ravelry.find_by(pattern_name: search)
        if searched_pattern
          self.where(id: searched_pattern)
        else
          @patterns = Ravelry.all
        end
    else
      @patterns = Ravelry.all
    end
  end

  # scope :search, -> (name_parameter) { where("name ilike ?", "%#{name_parameter}%")}

end
