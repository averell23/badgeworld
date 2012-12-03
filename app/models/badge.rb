class Badge < ActiveRecord::Base
  attr_accessible :criteria, :description, :name, :badge_image, :assertions, :earners

  mount_uploader :badge_image, BadgeImageUploader

  has_many :assertions
  has_many :earners, through: :assertions
end
