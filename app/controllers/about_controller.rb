class AboutController < ApplicationController
  def about_us
    @team_photo = AboutPhoto.where(:name=>"team_photo").first
    @who_are_we = AboutContent.where(:name=>"who").first
    @location_photo = AboutPhoto.where(:name=>"location").first
    @location_info = AboutContent.where(:name=>"location").first
    @schools = School.where(:visible=>true).order(:name)
    @mascot_photo = AboutPhoto.where(:name=>"mascot").first
    @mascot_info = AboutContent.where(:name=>"mascot").first
  end
  def about_site
  end
end
