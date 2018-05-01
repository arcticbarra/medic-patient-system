class Doctor < ApplicationRecord
  belongs_to :person
  enum speciality: %i[general traumatology allergology 
                      radiology cardiology gerontology
                      obstetrics pediatrics
                    ]
end
