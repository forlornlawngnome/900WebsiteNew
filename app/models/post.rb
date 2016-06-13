class Post < ActiveRecord::Base
  paginates_per 10
  
  belongs_to :year
  has_many :post_contents
  has_and_belongs_to_many :categories
  accepts_nested_attributes_for :post_contents, allow_destroy: true, reject_if: :all_blank
  
  validates_presence_of :title, :date_published 
  
  def self.active
    self.where(:active=>true)
  end
end
