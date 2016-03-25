class SponsorLevel < ActiveRecord::Base
  has_many :sponsor_year
  has_many :sponsors, :through=>:sponsor_year
end
