class Category < ActiveRecord::Base
  has_many :documents
  has_many :posts
end
