class ContentType < ActiveRecord::Base
  has_many :post_contents
  
  validates_presence_of :name
end
