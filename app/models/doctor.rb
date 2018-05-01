class Doctor < ApplicationRecord
  belongs_to :person
  belongs_to :area
  has_many :areas
  before_update :increase_salary, if: :years_experience_changed?
  before_update :select_new_leader, if: :area_id_changed?
  has_many :treatments
  # enum speciality: %i[general traumatology allergology
  #                     radiology cardiology gerontology
  #                     obstetrics pediatrics
  #                   ]
  validate :speciality_in_area

  def select_new_leader
    last_area = Area.find(area_id_was)
    if areas.map(&:name).include? last_area.name
      doctor = Doctor.where("'#{last_area.name.downcase}' = ANY(speciality)").where.not(id: id).first
      last_area.update(doctor: doctor)
    end
  end

  def speciality_in_area
    errors.add(:invalid_area, 'That area is not his speciality') unless speciality.include?(area.name.downcase)
  end

  def increase_salary
    self.salary = salary * 1.1 if years_experience.even? && !years_experience.zero?
  end
end
