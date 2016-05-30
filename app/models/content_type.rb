class ContentType < ActiveRecord::Base
  has_many :post_contents
end
