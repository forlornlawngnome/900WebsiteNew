class PostContent < ActiveRecord::Base
  belongs_to :post
  belongs_to :content_type
  
  validates_presence_of :content_type_id, :body, :post_order
end
