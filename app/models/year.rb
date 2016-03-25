class Year < ActiveRecord::Base
  has_many :sponsor_years
  has_many :sponsors, :through=>:sponsor_years
  has_many :sponsor_levels, :through=>:sponsor_years
  
  def self.current_year
    return Year.where("start_date <=? and end_date >=?",Date.today, Date.today).first
  end
end
