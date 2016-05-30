class Game < ActiveRecord::Base
  belongs_to :year
  has_many :game_videos
  has_one :robot
  has_many :competitions
  has_many :awards, :through=>:competitions
  
  validates_presence_of :name, :year_id
  
end
