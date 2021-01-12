# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Attend.delete_all
User.delete_all
Role.delete_all
Person.delete_all
DoctorCalendar.delete_all
Department.delete_all
# Shift.delete_all

role1 = Role.create(name: 'Admin')
role2 = Role.create(name: 'Doctor')
role3 = Role.create(name: 'Patient')

department1 = Department.create! name: 'Surgery', contactNumber: Faker::PhoneNumber.cell_phone_in_e164, location: Faker::Address.street_address 
department2 = Department.create! name: 'Medicine', contactNumber: Faker::PhoneNumber.cell_phone_in_e164, location: Faker::Address.street_address 
department3 = Department.create! name: 'Cancer Care', contactNumber: Faker::PhoneNumber.cell_phone_in_e164, location: Faker::Address.street_address 
department4 = Department.create! name: 'Urology', contactNumber: Faker::PhoneNumber.cell_phone_in_e164, location: Faker::Address.street_address 


# shift1 = Shift.create! shiftName: 'Morning', duration: 8, startTime: '2021-09-25 8:00AM', endTime: '2021-09-25 16:00PM', startDate: '2021-09-25 ', endDate: '2021-09-25 '
# shift2 = Shift.create! shiftName: 'Afternoon', duration: 8, startTime: '2021-09-25 16:00PM', endTime: '2021-09-25 24:00PM', startDate: '2021-09-25 ', endDate: '2021-09-25 '
# shift3 = Shift.create! shiftName: 'Emergency', duration: 8, startTime: '2021-09-25 12:00AM', endTime: '2021-09-25 8:00AM', startDate: '2021-09-25 ', endDate: '2021-09-25 '


1.times do 
  person = Person.create! fistName: Faker::Name.first_name, lastName: Faker::Name.last_name, documentId: Faker::IDNumber.chilean_id , phone: Faker::PhoneNumber.cell_phone_in_e164, historyNumber: Faker::IDNumber.valid 
  User.create! email: Faker::Internet.email, password: '1234567890', username: Faker::Internet.username, role_id: role1.id, person_id: person.id
end

20.times do 
  person = Person.create! fistName: Faker::Name.first_name, lastName: Faker::Name.last_name, documentId: Faker::IDNumber.chilean_id , phone: Faker::PhoneNumber.cell_phone_in_e164, historyNumber: Faker::IDNumber.valid 
  userDoctor = User.create! email: Faker::Internet.email, password: '1234567890', username: Faker::Internet.username, role_id: role2.id, person_id: person.id

  DoctorCalendar.create! startDate: '2021-09-25', endDate: '2021-09-25', startTime: '2021-09-23 10:00 AM', endTime: '2021-09-23 10:15 AM', totalHours: 5, user_id: userDoctor.id
  DoctorCalendar.create! startDate: '2021-09-25', endDate: '2021-09-25', startTime: '2021-09-23 10:15 AM', endTime: '2021-09-23 10:30 AM', totalHours: 5, user_id: userDoctor.id
  DoctorCalendar.create! startDate: '2021-09-25', endDate: '2021-09-25', startTime: '2021-09-23 10:30 AM', endTime: '2021-09-23 10:45 AM', totalHours: 5, user_id: userDoctor.id
  DoctorCalendar.create! startDate: '2021-09-25', endDate: '2021-09-25', startTime: '2021-09-23 10:45 AM', endTime: '2021-09-23 11:00 AM', totalHours: 5, user_id: userDoctor.id
  DoctorCalendar.create! startDate: '2021-09-25', endDate: '2021-09-25', startTime: '2021-09-23 11:00 AM', endTime: '2021-09-23 11:15 AM', totalHours: 5, user_id: userDoctor.id
  DoctorCalendar.create! startDate: '2021-09-25', endDate: '2021-09-25', startTime: '2021-09-23 11:15 AM', endTime: '2021-09-23 11:30 AM', totalHours: 5, user_id: userDoctor.id
  DoctorCalendar.create! startDate: '2021-09-25', endDate: '2021-09-25', startTime: '2021-09-23 11:30 AM', endTime: '2021-09-23 11:45 AM', totalHours: 5, user_id: userDoctor.id
  
  Attend.create! totalShift: 10, department_id: department1.id, user_id: userDoctor.id, shiftName: 'Morning', startTime: '2021-09-25 8:00AM', endTime: '2021-09-25 8:15AM', startDate: '2021-09-25 ', endDate: '2021-09-25 '
  Attend.create! totalShift: 10, department_id: department1.id, user_id: userDoctor.id, shiftName: 'Morning', startTime: '2021-09-25 8:15AM', endTime: '2021-09-25 8:30AM', startDate: '2021-09-25 ', endDate: '2021-09-25 '
  Attend.create! totalShift: 10, department_id: department1.id, user_id: userDoctor.id, shiftName: 'Morning', startTime: '2021-09-25 8:30AM', endTime: '2021-09-25 8:45AM', startDate: '2021-09-25 ', endDate: '2021-09-25 '
  Attend.create! totalShift: 10, department_id: department1.id, user_id: userDoctor.id, shiftName: 'Morning', startTime: '2021-09-25 8:45AM', endTime: '2021-09-25 9:00AM', startDate: '2021-09-25 ', endDate: '2021-09-25 '
  Attend.create! totalShift: 10, department_id: department1.id, user_id: userDoctor.id, shiftName: 'Morning', startTime: '2021-09-25 9:00AM', endTime: '2021-09-25 9:15AM', startDate: '2021-09-25 ', endDate: '2021-09-25 '
end


5.times do 
  person = Person.create! fistName: Faker::Name.first_name, lastName: Faker::Name.last_name, documentId: Faker::IDNumber.chilean_id, phone: Faker::PhoneNumber.cell_phone_in_e164, historyNumber: Faker::IDNumber.valid 
  userPatient = User.create! email: Faker::Internet.email, password: '1234567890', username: Faker::Internet.username, role_id: role3.id, person_id: person.id  
end

# DoctorUsers = User.where(:role_id => role2.id).all
# maximumUserId = DoctorUsers.maximum(:id)
# Attend.create! totalShift: 10, department_id: department1.id, user_id: maximumUserId, shift_id: shift1.id
# Attend.create! totalShift: 10, department_id: department1.id, user_id: maximumUserId-1, shift_id: shift2.id
# Attend.create! totalShift: 10, department_id: department1.id, user_id: maximumUserId-2, shift_id: shift3.id
# 
# Attend.create! totalShift: 10, department_id: department2.id, user_id: maximumUserId-3, shift_id: shift1.id
# Attend.create! totalShift: 10, department_id: department2.id, user_id: maximumUserId-4, shift_id: shift2.id
# Attend.create! totalShift: 10, department_id: department2.id, user_id: maximumUserId-5, shift_id: shift3.id
# 
# Attend.create! totalShift: 10, department_id: department2.id, user_id: maximumUserId-6, shift_id: shift1.id
# Attend.create! totalShift: 10, department_id: department2.id, user_id: maximumUserId-7, shift_id: shift2.id
# Attend.create! totalShift: 10, department_id: department2.id, user_id: maximumUserId-8, shift_id: shift3.id
