class DocumentLink < ActiveRecord::Base
  belongs_to :document
  
  validates_presence_of :name, :document_id, :doc_link
end
