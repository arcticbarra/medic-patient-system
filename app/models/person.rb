class Person < ApplicationRecord
  enum gender: [:male, :female]
end
