class Patient < ApplicationRecord
  belongs_to :person
  has_many :treatments
  enum insurance_plan: [:unlimited, :premium, :basic]
end
