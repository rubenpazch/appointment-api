class Shift < ApplicationRecord
  belongs_to :attends
  belongs_to :departments, through: :attends
end
