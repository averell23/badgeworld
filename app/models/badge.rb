class Badge < ActiveRecord::Base
  mount_uploader :badge_image, BadgeImageUploader

  has_many :assertions
  has_many :earners, through: :assertions

  validates :criteria, length: { minimum: 10 }
  validates :description, length: { minimum: 5, maximum: 200 }
  validates :badge_image, presence: true
  validates :name, presence: true, uniqueness: true

end
