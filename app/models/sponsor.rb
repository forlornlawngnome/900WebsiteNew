class Sponsor < ActiveRecord::Base
  mount_uploader :logo_link, ImageUploader
end
