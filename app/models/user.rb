class User < ApplicationRecord
  belongs_to :role
  validates :email, uniqueness: true
  validates_format_of :email, with: /@/
  validates :password_digest, presence: true
  validates :username, uniqueness: true
  has_secure_password
end
