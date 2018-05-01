class Area < ApplicationRecord
  belongs_to :doctor
  has_many :doctors
end
