class User < ApplicationRecord
  belongs_to :role
  belongs_to :person
  has_many :doctor_calendar
  # has_many :attends
  # has_many :departments, through: :attends
  validates :email, uniqueness: true
  validates_format_of :email, with: /@/
  validates :password_digest, presence: true
  validates :username, uniqueness: true
  has_secure_password

  def department 
    departments.group('id')
  end

  def timeable_doctor( doctorId )
    doctor_calendar.select(:id, :startDate, :endDate, :startTime, :endTime).where(user_id: doctorId ) 
  end


end
