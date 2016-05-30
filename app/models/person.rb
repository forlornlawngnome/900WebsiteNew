class Person < ActiveRecord::Base
  belongs_to :role
  has_and_belongs_to_many :documents
  
  mount_uploader :image, ImageUploader
end
