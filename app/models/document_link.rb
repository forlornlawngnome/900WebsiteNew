class DocumentLink < ActiveRecord::Base
  belongs_to :document
  
  validates_presence_of :name, :doc_link
end
