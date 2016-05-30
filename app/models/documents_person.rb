class DocumentsPerson < ActiveRecord::Base
  belongs_to :person
  belongs_to :document
  
  validates_presence_of :person_id, :document_id
end
