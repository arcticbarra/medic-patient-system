class Area < ApplicationRecord
  belongs_to :doctor, optional: true
  has_many :doctors
  validate :leader_works_in_area
  def leader_works_in_area
    errors.add(:invalid_leader, "The appointed doctor doesn't work in this area") unless doctor.nil? || doctor.area == self
  end
end
