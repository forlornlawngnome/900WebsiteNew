class Category < ActiveRecord::Base
  has_many :documents
  has_and_belongs_to_many :posts
end
