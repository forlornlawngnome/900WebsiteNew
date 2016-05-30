class Handbook < ActiveRecord::Base
  validates_presence_of :about, :handbook_link
  
  def self.latest
    Handbook.order("created_at desc").first
  end
end
