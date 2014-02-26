class Assertion < ActiveRecord::Base

  belongs_to :earner
  belongs_to :badge

  validates_presence_of :badge

  def activated?
    !earner_id.blank?
  end

  def activate!(email, name)
    return (earner.email == email) if activated?
    earner = Earner.find_or_create_by_email(email)
    earner.name = name
    self.earner = earner
    self.save
    earner.persisted? && (earner.email == email)
  end

end
