class Person < ActiveRecord::Base
  belongs_to :role
  
  mount_uploader :image, ImageUploader
end
