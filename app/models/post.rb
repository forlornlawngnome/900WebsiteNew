class Post < ActiveRecord::Base
  paginates_per 10
  
  belongs_to :year
  has_many :post_contents
  has_and_belongs_to_many :categories
end
