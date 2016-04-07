class Document < ActiveRecord::Base
  belongs_to :category
  has_many :document_links
  has_and_belongs_to_many :people
end
