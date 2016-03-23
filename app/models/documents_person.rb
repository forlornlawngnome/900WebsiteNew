class DocumentsPerson < ActiveRecord::Base
  belongs_to :person
  belongs_to :document
end
