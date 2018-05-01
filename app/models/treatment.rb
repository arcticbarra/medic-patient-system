class Treatment < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor
  validate :area_in_plan

  def area_in_plan
    if patient.premium? && doctor.area.name.downcase == 'radiology'
      errors.add(:area,  'Speciality not included in plan')
    elsif patient.basic? && !['general', 'obstetrics', 'pediatrics'].include?(doctor.area.name.downcase)
      errors.add(:area,  'Speciality not included in plan')
    end
  end
end
