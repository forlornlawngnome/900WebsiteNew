class Competition < ActiveRecord::Base
  belongs_to :game
  has_and_belongs_to_many :awards
  has_many :awards_competitions
  
  def full_name
    "#{self.name} (#{self.year.range})"
  end
end
