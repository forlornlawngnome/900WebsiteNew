class PostContent < ActiveRecord::Base
  belongs_to :post
  belongs_to :content_type
  
  validates_presence_of :post_id, :content_type_id, :content, :order
end
