class Earner < ActiveRecord::Base
  
  attr_accessible :name, :email, :badges, :assertions, :badge_ids

  has_many :assertions
  has_many :badges, through: :assertions

end
