class Handbook < ActiveRecord::Base
  def self.latest
    Handbook.order("created_at desc").first
  end
end
