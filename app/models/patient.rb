class Patient < ApplicationRecord
  belongs_to :person
  enum insurance_plan: [:unlimited, :premium, :basic]
end
