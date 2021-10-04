class Pattern < ApplicationRecord
  belongs_to :user
  validates :pattern_name, presence: true
  validates :web_link, presence: true
  validates :user_id, presence: true
  validates :ravelry_id, presence: true
  validates :craft_type, presence: true

  def get ravelry_pattern
    

  

end