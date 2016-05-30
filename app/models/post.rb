class Post < ActiveRecord::Base
  paginates_per 10
  
  belongs_to :year
  has_many :post_contents
  has_and_belongs_to_many :categories
  
  validates_presence_of :title, :date_published 
  
  def self.active
    self.where(:active=>true)
  end
end
