class Game < ActiveRecord::Base
  belongs_to :year
  has_many :game_videos
  has_one :robot
  has_many :competitions, :through=>:year
  has_many :awards, :through=>:competitions
end
