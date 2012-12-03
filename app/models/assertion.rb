class Assertion < ActiveRecord::Base

  attr_accessible :earner, :badge, :badge_id

  belongs_to :earner
  belongs_to :badge

end
