class Form < ActiveRecord::Base
  validates_presence_of :name, :form_url
end
