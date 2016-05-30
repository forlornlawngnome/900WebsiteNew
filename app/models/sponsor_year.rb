class SponsorYear < ActiveRecord::Base
  belongs_to :sponsor
  belongs_to :year
  belongs_to :sponsor_level
  
  validates_presence_of :sponsor_id, :year_id, :sponsor_level_id
end
