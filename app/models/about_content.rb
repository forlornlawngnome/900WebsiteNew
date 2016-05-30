class AboutContent < ActiveRecord::Base
  validates_presence_of :name, :title, :content
end
