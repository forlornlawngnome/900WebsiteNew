class Sponsor < ActiveRecord::Base
  has_many :sponsor_years
  
  validates_presence_of :name, :sponsor_url
  
  mount_uploader :logo_link, ImageUploader
  
  def self.current_institutional_sponsors
    institutional= SponsorLevel.where(:name=>"Institutional").first
    sponsors = Year.current_year.sponsor_years.where(:sponsor_level=>institutional)
    sponsors.sort_by{|s| s.sponsor.name.downcase}
  end
  def self.current_gold_sponsors
    gold= SponsorLevel.where(:name=>"Gold").first
    sponsors = Year.current_year.sponsor_years.where(:sponsor_level=>gold)
    sponsors.sort_by{|s| s.sponsor.name.downcase}
  end
end
