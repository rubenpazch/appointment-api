class Attend < ApplicationRecord
  belongs_to :department
  belongs_to :user
  has_many :shifts
end
