class Person < ApplicationRecord
  enum gender: [:male, :female]
  has_many :doctors
  has_many :patients
end
