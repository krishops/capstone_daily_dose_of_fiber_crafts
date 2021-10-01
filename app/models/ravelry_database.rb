class RavelryDatabase < ApplicationRecord
  validates :pattern_name, presence: true
  validates :ravelry_id, presence: true
  validates :web_link, presence: true
  validates :picture, presence: true


end
