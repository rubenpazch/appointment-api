class User < ApplicationRecord
  belongs_to :role
  belongs_to :person
  has_many :doctor_calendar
  belongs_to :department

  
  validates :email, uniqueness: true
  validates_format_of :email, with: /@/
  validates :password_digest, presence: true
  validates :username, uniqueness: true
  has_secure_password

  scope :filter_by_doctors, ->  {
    joins(:role).where(roles: { code: 'D'})
  }

  scope :filter_by_admin, ->  {
    joins(:role).where(roles: { code: 'A'})
  }

  scope :filter_by_patients, ->  {
    joins(:role).where(roles: { code: 'P'})
  }

  def timeable_doctor(startDate, endDate)
    #doctor_calendars.select(:id, :startDate, :endDate, :startTime, :endTime, :totalHours).where('startDate > ? AND startDate < ?', '2021-02-01', '2021-02-02')
    doctor_calendar.where(:startDate => (startDate)..endDate)
  end


end
