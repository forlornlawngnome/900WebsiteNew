class PostContent < ActiveRecord::Base
  belongs_to :post
  belongs_to :content_type
end
