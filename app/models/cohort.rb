class Cohort < ApplicationRecord
  belongs_to :campus
  has_many :students
  has_many :cohort_days
  has_many :days, through: :cohort_days
end
