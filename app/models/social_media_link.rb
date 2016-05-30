class SocialMediaLink < ActiveRecord::Base
  validates_presence_of :name, :icon, :media_url
end
