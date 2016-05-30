class Award < ActiveRecord::Base
  has_and_belongs_to_many :competitons
  has_many :awards_competitions
  
  validates_presence_of :name, :description
end
