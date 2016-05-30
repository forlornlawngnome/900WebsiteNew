class Robot < ActiveRecord::Base
  belongs_to :game
  
  validates_presence_of :name, :game_id
  
  mount_uploader :image, ImageUploader
end
