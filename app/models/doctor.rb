class Doctor < ApplicationRecord
  belongs_to :person
  belongs_to :area
  has_many :treatments
  enum speciality: %i[general traumatology allergology 
                      radiology cardiology gerontology
                      obstetrics pediatrics
                    ]
end
