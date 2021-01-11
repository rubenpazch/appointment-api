class User < ApplicationRecord
  belongs_to :role
  belongs_to :person
  has_many :doctor_calendar
  validates :email, uniqueness: true
  validates_format_of :email, with: /@/
  validates :password_digest, presence: true
  validates :username, uniqueness: true
  has_secure_password
end
