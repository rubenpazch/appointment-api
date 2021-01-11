class Department < ApplicationRecord
  has_many :users
  has_many :users, through: :User
end
