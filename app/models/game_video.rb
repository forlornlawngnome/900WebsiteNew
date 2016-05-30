class GameVideo < ActiveRecord::Base
  belongs_to :game
  
  validates_presence_of :game_id, :title, :link
end
