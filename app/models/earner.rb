class Earner < ActiveRecord::Base
  
  attr_accessible :name, :email, :badges, :assertions, :badge_ids

  has_many :assertions
  has_many :badges, through: :assertions

  validates :email, presence: true, uniqueness: true, format: /[a-z0-9\#$%&'*+\/=?^_`{|}~-]+(?:\.[a-z0-9\#$%&'*+\/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?/i
  validates :name, presence: true, length: { minimum: 4 }

end
