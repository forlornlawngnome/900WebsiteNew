class Document < ActiveRecord::Base
  belongs_to :category
  has_many :document_links
  has_and_belongs_to_many :people
  accepts_nested_attributes_for :document_links, allow_destroy: true, reject_if: :all_blank
  
  validates_presence_of :name, :date_published, :about, :category_id
end
