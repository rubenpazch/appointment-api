class Shift < ApplicationRecord
  has_and_belongs_to_many :attends
  # belongs_to :departments, through: :attends
end
