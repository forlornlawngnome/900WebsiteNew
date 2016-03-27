class Post < ActiveRecord::Base
  belongs_to :year
  has_many :post_contents
end
