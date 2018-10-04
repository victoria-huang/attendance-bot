class Day < ApplicationRecord
  has_many :cohort_days
  has_many :cohorts, through: :cohort_days

  has_many :student_days
  has_many :students, through: :student_days
end
