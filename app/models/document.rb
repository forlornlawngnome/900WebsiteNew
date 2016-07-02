class Document < ActiveRecord::Base
  paginates_per 10
  
  belongs_to :category
  has_many :document_links
  has_and_belongs_to_many :people
  accepts_nested_attributes_for :document_links, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :people
  
  validates_presence_of :name, :date_published, :about, :category_id
end
