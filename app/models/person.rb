class Person < ActiveRecord::Base
  belongs_to :role
  has_and_belongs_to_many :documents
  
  validates_presence_of :name, :year_start, :role_id
  
  mount_uploader :image, ImageUploader
end
