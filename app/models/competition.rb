class Competition < ActiveRecord::Base
  belongs_to :year
  has_and_belongs_to_many :awards
  has_many :awards_competitions
end
