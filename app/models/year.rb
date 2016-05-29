class Year < ActiveRecord::Base
  has_many :sponsor_years
  has_many :sponsors, :through=>:sponsor_years
  has_many :sponsor_levels, :through=>:sponsor_years
  has_one :game
  has_one :robot
  has_many :competitions
  
  def self.current_year
    return Year.where("start_date <=? and end_date >=?",Date.today, Date.today).first
  end
  
  def range
    range = "#{self.start_date.year}-#{self.end_date.year}"
    return range
  end
  def self.find_year(date)
    @years = Year.where("start_date<? and end_date>=?", date, date).first
  end
end
