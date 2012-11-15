class Badge < ActiveRecord::Base
  attr_accessible :criteria, :description, :name, :badge_image

  mount_uploader :badge_image, BadgeImageUploader
end
