class CampusUser < ApplicationRecord
  belongs_to :user
  belongs_to :campus
end
