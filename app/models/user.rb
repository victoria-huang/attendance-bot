class User < ApplicationRecord
  has_many :campus_users
  has_many :campuses, through: :campus_users
end
