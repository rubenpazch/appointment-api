class Department < ApplicationRecord
  has_many :attends
  has_many :users, through: :attends
  has_many :shifts, through: :attends
end
