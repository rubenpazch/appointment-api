class Department < ApplicationRecord
  has_many :attends
  has_many :users, through: :attends
end
