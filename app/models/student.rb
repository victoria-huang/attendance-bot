class Student < ApplicationRecord
  belongs_to :cohort
  has_many :student_days
  has_many :days, through: :student_days
end
