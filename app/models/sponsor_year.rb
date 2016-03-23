class SponsorYear < ActiveRecord::Base
  belongs_to :sponsor
  belongs_to :year
  belongs_to :sponsor_level
end
