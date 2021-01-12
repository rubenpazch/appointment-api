# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Shift.delete_all
User.delete_all
Role.delete_all
Person.delete_all
DoctorCalendar.delete_all
Department.delete_all


role1 = Role.create(name: 'Admin', code: 'A')
role2 = Role.create(name: 'Doctor', code: 'D')
role3 = Role.create(name: 'Patient', code: 'P')
 
department1 = Department.create! name: 'Surgery', contactNumber: Faker::PhoneNumber.cell_phone_in_e164, location: Faker::Address.street_address
department2 = Department.create! name: 'Medicine', contactNumber: Faker::PhoneNumber.cell_phone_in_e164, location: Faker::Address.street_address
department3 = Department.create! name: 'Cancer Care', contactNumber: Faker::PhoneNumber.cell_phone_in_e164, location: Faker::Address.street_address
department4 = Department.create! name: 'Urology', contactNumber: Faker::PhoneNumber.cell_phone_in_e164, location: Faker::Address.street_address
department5 = Department.create! name: 'Unknow', contactNumber: Faker::PhoneNumber.cell_phone_in_e164, location: Faker::Address.street_address


shift1 = Shift.create! totalShift: 32, interval: 15,  startDate: '2021-02-01 ', endDate: '2021-02-28 ', department_id: department1.id
shift2 = Shift.create! totalShift: 16, interval: 30,  startDate: '2021-02-01 ', endDate: '2021-02-28 ', department_id: department2.id
shift3 = Shift.create! totalShift: 32, interval: 15,  startDate: '2021-02-01 ', endDate: '2021-02-28 ', department_id: department3.id
shift4 = Shift.create! totalShift: 32, interval: 15,  startDate: '2021-02-01 ', endDate: '2021-02-28 ', department_id: department4.id
shift5 = Shift.create! totalShift: 32, interval: 15,  startDate: '2021-02-01 ', endDate: '2021-02-28 ', department_id: department5.id



# Create Admin Data
person = Person.create! fistName: Faker::Name.first_name, lastName: Faker::Name.last_name, documentId: Faker::IDNumber.chilean_id , phone: Faker::PhoneNumber.cell_phone_in_e164, historyNumber: Faker::IDNumber.valid 
User.create! email: Faker::Internet.email, password: '1234567890', username: Faker::Internet.username, role_id: role1.id, person_id: person.id, department_id: department5.id

  
# Create Doctors data
1.times do 
  person1 = Person.create! fistName: Faker::Name.first_name, lastName: Faker::Name.last_name, documentId: Faker::IDNumber.chilean_id , phone: Faker::PhoneNumber.cell_phone_in_e164, historyNumber: Faker::IDNumber.valid 
  userDoctor1 = User.create! email: Faker::Internet.email, password: '1234567890', username: Faker::Internet.username, role_id: role2.id, person_id: person1.id, department_id: department1.id

  DoctorCalendar.create! startDate: '2021-02-01', endDate: '2021-02-01', startTime: '2021-02-01 08:00 AM', endTime: '2021-02-01 16:00 PM', totalHours: 8, user_id: userDoctor1.id
  DoctorCalendar.create! startDate: '2021-02-02', endDate: '2021-02-02', startTime: '2021-02-02 08:00 AM', endTime: '2021-02-02 16:00 PM', totalHours: 8, user_id: userDoctor1.id
  DoctorCalendar.create! startDate: '2021-02-03', endDate: '2021-02-03', startTime: '2021-02-03 08:00 AM', endTime: '2021-02-03 16:00 PM', totalHours: 8, user_id: userDoctor1.id
  DoctorCalendar.create! startDate: '2021-02-04', endDate: '2021-02-04', startTime: '2021-02-04 08:00 AM', endTime: '2021-02-04 16:00 PM', totalHours: 8, user_id: userDoctor1.id
  DoctorCalendar.create! startDate: '2021-02-05', endDate: '2021-02-05', startTime: '2021-02-05 08:00 AM', endTime: '2021-02-05 16:00 PM', totalHours: 8, user_id: userDoctor1.id
  DoctorCalendar.create! startDate: '2021-02-06', endDate: '2021-02-06', startTime: '2021-02-06 08:00 AM', endTime: '2021-02-06 16:00 PM', totalHours: 8, user_id: userDoctor1.id
  DoctorCalendar.create! startDate: '2021-02-07', endDate: '2021-02-07', startTime: '2021-02-07 08:00 AM', endTime: '2021-02-07 16:00 PM', totalHours: 8, user_id: userDoctor1.id

  DoctorCalendar.create! startDate: '2021-02-11', endDate: '2021-02-11', startTime: '2021-02-11 08:00 AM', endTime: '2021-02-11 16:00 PM', totalHours: 8, user_id: userDoctor1.id
  DoctorCalendar.create! startDate: '2021-02-12', endDate: '2021-02-12', startTime: '2021-02-12 08:00 AM', endTime: '2021-02-12 16:00 PM', totalHours: 8, user_id: userDoctor1.id
  DoctorCalendar.create! startDate: '2021-02-13', endDate: '2021-02-13', startTime: '2021-02-13 08:00 AM', endTime: '2021-02-13 16:00 PM', totalHours: 8, user_id: userDoctor1.id
  DoctorCalendar.create! startDate: '2021-02-14', endDate: '2021-02-14', startTime: '2021-02-14 08:00 AM', endTime: '2021-02-14 16:00 PM', totalHours: 8, user_id: userDoctor1.id
  DoctorCalendar.create! startDate: '2021-02-15', endDate: '2021-02-15', startTime: '2021-02-15 08:00 AM', endTime: '2021-02-15 16:00 PM', totalHours: 8, user_id: userDoctor1.id
  DoctorCalendar.create! startDate: '2021-02-16', endDate: '2021-02-16', startTime: '2021-02-16 08:00 AM', endTime: '2021-02-16 16:00 PM', totalHours: 8, user_id: userDoctor1.id
  DoctorCalendar.create! startDate: '2021-02-17', endDate: '2021-02-17', startTime: '2021-02-17 08:00 AM', endTime: '2021-02-17 16:00 PM', totalHours: 8, user_id: userDoctor1.id
end

1.times do 
  person2 = Person.create! fistName: Faker::Name.first_name, lastName: Faker::Name.last_name, documentId: Faker::IDNumber.chilean_id , phone: Faker::PhoneNumber.cell_phone_in_e164, historyNumber: Faker::IDNumber.valid 
  userDoctor2 = User.create! email: Faker::Internet.email, password: '1234567890', username: Faker::Internet.username, role_id: role2.id, person_id: person2.id, department_id: department1.id

  DoctorCalendar.create! startDate: '2021-02-01', endDate: '2021-02-01', startTime: '2021-02-01 16:00 PM', endTime: '2021-02-01 12:00 AM', totalHours: 8, user_id: userDoctor2.id
  DoctorCalendar.create! startDate: '2021-02-02', endDate: '2021-02-02', startTime: '2021-02-02 16:00 PM', endTime: '2021-02-02 12:00 AM', totalHours: 8, user_id: userDoctor2.id
  DoctorCalendar.create! startDate: '2021-02-03', endDate: '2021-02-03', startTime: '2021-02-03 16:00 PM', endTime: '2021-02-03 12:00 AM', totalHours: 8, user_id: userDoctor2.id
  DoctorCalendar.create! startDate: '2021-02-04', endDate: '2021-02-04', startTime: '2021-02-04 16:00 PM', endTime: '2021-02-04 12:00 AM', totalHours: 8, user_id: userDoctor2.id
  DoctorCalendar.create! startDate: '2021-02-05', endDate: '2021-02-05', startTime: '2021-02-05 16:00 PM', endTime: '2021-02-05 12:00 AM', totalHours: 8, user_id: userDoctor2.id
  DoctorCalendar.create! startDate: '2021-02-06', endDate: '2021-02-06', startTime: '2021-02-06 16:00 PM', endTime: '2021-02-06 12:00 AM', totalHours: 8, user_id: userDoctor2.id
  DoctorCalendar.create! startDate: '2021-02-07', endDate: '2021-02-07', startTime: '2021-02-07 16:00 PM', endTime: '2021-02-07 12:00 AM', totalHours: 8, user_id: userDoctor2.id

  DoctorCalendar.create! startDate: '2021-02-11', endDate: '2021-02-11', startTime: '2021-02-11 16:00 PM', endTime: '2021-02-11 12:00 AM', totalHours: 8, user_id: userDoctor2.id
  DoctorCalendar.create! startDate: '2021-02-12', endDate: '2021-02-12', startTime: '2021-02-12 16:00 PM', endTime: '2021-02-12 12:00 AM', totalHours: 8, user_id: userDoctor2.id
  DoctorCalendar.create! startDate: '2021-02-13', endDate: '2021-02-13', startTime: '2021-02-13 16:00 PM', endTime: '2021-02-13 12:00 AM', totalHours: 8, user_id: userDoctor2.id
  DoctorCalendar.create! startDate: '2021-02-14', endDate: '2021-02-14', startTime: '2021-02-14 16:00 PM', endTime: '2021-02-14 12:00 AM', totalHours: 8, user_id: userDoctor2.id
  DoctorCalendar.create! startDate: '2021-02-15', endDate: '2021-02-15', startTime: '2021-02-15 16:00 PM', endTime: '2021-02-15 12:00 AM', totalHours: 8, user_id: userDoctor2.id
  DoctorCalendar.create! startDate: '2021-02-16', endDate: '2021-02-16', startTime: '2021-02-16 16:00 PM', endTime: '2021-02-16 12:00 AM', totalHours: 8, user_id: userDoctor2.id
  DoctorCalendar.create! startDate: '2021-02-17', endDate: '2021-02-17', startTime: '2021-02-17 16:00 PM', endTime: '2021-02-17 12:00 AM', totalHours: 8, user_id: userDoctor2.id
end

1.times do 
  person3 = Person.create! fistName: Faker::Name.first_name, lastName: Faker::Name.last_name, documentId: Faker::IDNumber.chilean_id , phone: Faker::PhoneNumber.cell_phone_in_e164, historyNumber: Faker::IDNumber.valid 
  userDoctor3 = User.create! email: Faker::Internet.email, password: '1234567890', username: Faker::Internet.username, role_id: role2.id, person_id: person3.id, department_id: department2.id

  DoctorCalendar.create! startDate: '2021-02-01', endDate: '2021-02-01', startTime: '2021-02-01 08:00 AM', endTime: '2021-02-01 16:00 PM', totalHours: 8, user_id: userDoctor3.id
  DoctorCalendar.create! startDate: '2021-02-02', endDate: '2021-02-02', startTime: '2021-02-02 08:00 AM', endTime: '2021-02-02 16:00 PM', totalHours: 8, user_id: userDoctor3.id
  DoctorCalendar.create! startDate: '2021-02-03', endDate: '2021-02-03', startTime: '2021-02-03 08:00 AM', endTime: '2021-02-03 16:00 PM', totalHours: 8, user_id: userDoctor3.id
  DoctorCalendar.create! startDate: '2021-02-04', endDate: '2021-02-04', startTime: '2021-02-04 08:00 AM', endTime: '2021-02-04 16:00 PM', totalHours: 8, user_id: userDoctor3.id
  DoctorCalendar.create! startDate: '2021-02-05', endDate: '2021-02-05', startTime: '2021-02-05 08:00 AM', endTime: '2021-02-05 16:00 PM', totalHours: 8, user_id: userDoctor3.id
  DoctorCalendar.create! startDate: '2021-02-06', endDate: '2021-02-06', startTime: '2021-02-06 08:00 AM', endTime: '2021-02-06 16:00 PM', totalHours: 8, user_id: userDoctor3.id
  DoctorCalendar.create! startDate: '2021-02-07', endDate: '2021-02-07', startTime: '2021-02-07 08:00 AM', endTime: '2021-02-07 16:00 PM', totalHours: 8, user_id: userDoctor3.id

  DoctorCalendar.create! startDate: '2021-02-11', endDate: '2021-02-11', startTime: '2021-02-11 08:00 AM', endTime: '2021-02-11 16:00 PM', totalHours: 8, user_id: userDoctor3.id
  DoctorCalendar.create! startDate: '2021-02-12', endDate: '2021-02-12', startTime: '2021-02-12 08:00 AM', endTime: '2021-02-12 16:00 PM', totalHours: 8, user_id: userDoctor3.id
  DoctorCalendar.create! startDate: '2021-02-13', endDate: '2021-02-13', startTime: '2021-02-13 08:00 AM', endTime: '2021-02-13 16:00 PM', totalHours: 8, user_id: userDoctor3.id
  DoctorCalendar.create! startDate: '2021-02-14', endDate: '2021-02-14', startTime: '2021-02-14 08:00 AM', endTime: '2021-02-14 16:00 PM', totalHours: 8, user_id: userDoctor3.id
  DoctorCalendar.create! startDate: '2021-02-15', endDate: '2021-02-15', startTime: '2021-02-15 08:00 AM', endTime: '2021-02-15 16:00 PM', totalHours: 8, user_id: userDoctor3.id
  DoctorCalendar.create! startDate: '2021-02-16', endDate: '2021-02-16', startTime: '2021-02-16 08:00 AM', endTime: '2021-02-16 16:00 PM', totalHours: 8, user_id: userDoctor3.id
  DoctorCalendar.create! startDate: '2021-02-17', endDate: '2021-02-17', startTime: '2021-02-17 08:00 AM', endTime: '2021-02-17 16:00 PM', totalHours: 8, user_id: userDoctor3.id
end

1.times do 
  person4 = Person.create! fistName: Faker::Name.first_name, lastName: Faker::Name.last_name, documentId: Faker::IDNumber.chilean_id , phone: Faker::PhoneNumber.cell_phone_in_e164, historyNumber: Faker::IDNumber.valid 
  userDoctor4 = User.create! email: Faker::Internet.email, password: '1234567890', username: Faker::Internet.username, role_id: role2.id, person_id: person4.id, department_id: department2.id

  DoctorCalendar.create! startDate: '2021-02-01', endDate: '2021-02-01', startTime: '2021-02-01 16:00 PM', endTime: '2021-02-01 12:00 AM', totalHours: 8, user_id: userDoctor4.id
  DoctorCalendar.create! startDate: '2021-02-02', endDate: '2021-02-02', startTime: '2021-02-02 16:00 PM', endTime: '2021-02-02 12:00 AM', totalHours: 8, user_id: userDoctor4.id
  DoctorCalendar.create! startDate: '2021-02-03', endDate: '2021-02-03', startTime: '2021-02-03 16:00 PM', endTime: '2021-02-03 12:00 AM', totalHours: 8, user_id: userDoctor4.id
  DoctorCalendar.create! startDate: '2021-02-04', endDate: '2021-02-04', startTime: '2021-02-04 16:00 PM', endTime: '2021-02-04 12:00 AM', totalHours: 8, user_id: userDoctor4.id
  DoctorCalendar.create! startDate: '2021-02-05', endDate: '2021-02-05', startTime: '2021-02-05 16:00 PM', endTime: '2021-02-05 12:00 AM', totalHours: 8, user_id: userDoctor4.id
  DoctorCalendar.create! startDate: '2021-02-06', endDate: '2021-02-06', startTime: '2021-02-06 16:00 PM', endTime: '2021-02-06 12:00 AM', totalHours: 8, user_id: userDoctor4.id
  DoctorCalendar.create! startDate: '2021-02-07', endDate: '2021-02-07', startTime: '2021-02-07 16:00 PM', endTime: '2021-02-07 12:00 AM', totalHours: 8, user_id: userDoctor4.id

  DoctorCalendar.create! startDate: '2021-02-11', endDate: '2021-02-11', startTime: '2021-02-11 16:00 PM', endTime: '2021-02-11 12:00 AM', totalHours: 8, user_id: userDoctor4.id
  DoctorCalendar.create! startDate: '2021-02-12', endDate: '2021-02-12', startTime: '2021-02-12 16:00 PM', endTime: '2021-02-12 12:00 AM', totalHours: 8, user_id: userDoctor4.id
  DoctorCalendar.create! startDate: '2021-02-13', endDate: '2021-02-13', startTime: '2021-02-13 16:00 PM', endTime: '2021-02-13 12:00 AM', totalHours: 8, user_id: userDoctor4.id
  DoctorCalendar.create! startDate: '2021-02-14', endDate: '2021-02-14', startTime: '2021-02-14 16:00 PM', endTime: '2021-02-14 12:00 AM', totalHours: 8, user_id: userDoctor4.id
  DoctorCalendar.create! startDate: '2021-02-15', endDate: '2021-02-15', startTime: '2021-02-15 16:00 PM', endTime: '2021-02-15 12:00 AM', totalHours: 8, user_id: userDoctor4.id
  DoctorCalendar.create! startDate: '2021-02-16', endDate: '2021-02-16', startTime: '2021-02-16 16:00 PM', endTime: '2021-02-16 12:00 AM', totalHours: 8, user_id: userDoctor4.id
  DoctorCalendar.create! startDate: '2021-02-17', endDate: '2021-02-17', startTime: '2021-02-17 16:00 PM', endTime: '2021-02-17 12:00 AM', totalHours: 8, user_id: userDoctor4.id
end





# 5.times do 
#   person5 = Person.create! fistName: Faker::Name.first_name, lastName: Faker::Name.last_name, documentId: Faker::IDNumber.chilean_id , phone: Faker::PhoneNumber.cell_phone_in_e164, historyNumber: Faker::IDNumber.valid 
#   userDoctor5 = User.create! email: Faker::Internet.email, password: '1234567890', username: Faker::Internet.username, role_id: role2.id, person_id: person5.id, department_id: department3.id
# 
#   DoctorCalendar.create! startDate: '2021-02-01', endDate: '2021-02-01', startTime: '2021-02-01 08:00 AM', endTime: '2021-02-01 16:00 PM', totalHours: 8, user_id: userDoctor5.id
#   DoctorCalendar.create! startDate: '2021-02-02', endDate: '2021-02-02', startTime: '2021-02-02 08:00 AM', endTime: '2021-02-02 16:00 PM', totalHours: 8, user_id: userDoctor5.id
#   DoctorCalendar.create! startDate: '2021-02-03', endDate: '2021-02-03', startTime: '2021-02-03 08:00 AM', endTime: '2021-02-03 16:00 PM', totalHours: 8, user_id: userDoctor5.id
#   DoctorCalendar.create! startDate: '2021-02-04', endDate: '2021-02-04', startTime: '2021-02-04 08:00 AM', endTime: '2021-02-04 16:00 PM', totalHours: 8, user_id: userDoctor5.id
#   DoctorCalendar.create! startDate: '2021-02-05', endDate: '2021-02-05', startTime: '2021-02-05 08:00 AM', endTime: '2021-02-05 16:00 PM', totalHours: 8, user_id: userDoctor5.id
#   DoctorCalendar.create! startDate: '2021-02-06', endDate: '2021-02-06', startTime: '2021-02-06 08:00 AM', endTime: '2021-02-06 16:00 PM', totalHours: 8, user_id: userDoctor5.id
#   DoctorCalendar.create! startDate: '2021-02-07', endDate: '2021-02-07', startTime: '2021-02-07 08:00 AM', endTime: '2021-02-07 16:00 PM', totalHours: 8, user_id: userDoctor5.id
# 
#   DoctorCalendar.create! startDate: '2021-02-11', endDate: '2021-02-11', startTime: '2021-02-11 08:00 AM', endTime: '2021-02-11 16:00 PM', totalHours: 8, user_id: userDoctor5.id
#   DoctorCalendar.create! startDate: '2021-02-12', endDate: '2021-02-12', startTime: '2021-02-12 08:00 AM', endTime: '2021-02-12 16:00 PM', totalHours: 8, user_id: userDoctor5.id
#   DoctorCalendar.create! startDate: '2021-02-13', endDate: '2021-02-13', startTime: '2021-02-13 08:00 AM', endTime: '2021-02-13 16:00 PM', totalHours: 8, user_id: userDoctor5.id
#   DoctorCalendar.create! startDate: '2021-02-14', endDate: '2021-02-14', startTime: '2021-02-14 08:00 AM', endTime: '2021-02-14 16:00 PM', totalHours: 8, user_id: userDoctor5.id
#   DoctorCalendar.create! startDate: '2021-02-15', endDate: '2021-02-15', startTime: '2021-02-15 08:00 AM', endTime: '2021-02-15 16:00 PM', totalHours: 8, user_id: userDoctor5.id
#   DoctorCalendar.create! startDate: '2021-02-16', endDate: '2021-02-16', startTime: '2021-02-16 08:00 AM', endTime: '2021-02-16 16:00 PM', totalHours: 8, user_id: userDoctor5.id
#   DoctorCalendar.create! startDate: '2021-02-17', endDate: '2021-02-17', startTime: '2021-02-17 08:00 AM', endTime: '2021-02-17 16:00 PM', totalHours: 8, user_id: userDoctor5.id
# end

# 5.times do 
#   person6 = Person.create! fistName: Faker::Name.first_name, lastName: Faker::Name.last_name, documentId: Faker::IDNumber.chilean_id , phone: Faker::PhoneNumber.cell_phone_in_e164, historyNumber: Faker::IDNumber.valid 
#   userDoctor6 = User.create! email: Faker::Internet.email, password: '1234567890', username: Faker::Internet.username, role_id: role2.id, person_id: person6.id, department_id: department3.id
# 
#   DoctorCalendar.create! startDate: '2021-02-01', endDate: '2021-02-01', startTime: '2021-02-01 16:00 PM', endTime: '2021-02-01 12:00 AM', totalHours: 8, user_id: userDoctor6.id
#   DoctorCalendar.create! startDate: '2021-02-02', endDate: '2021-02-02', startTime: '2021-02-02 16:00 PM', endTime: '2021-02-02 12:00 AM', totalHours: 8, user_id: userDoctor6.id
#   DoctorCalendar.create! startDate: '2021-02-03', endDate: '2021-02-03', startTime: '2021-02-03 16:00 PM', endTime: '2021-02-03 12:00 AM', totalHours: 8, user_id: userDoctor6.id
#   DoctorCalendar.create! startDate: '2021-02-04', endDate: '2021-02-04', startTime: '2021-02-04 16:00 PM', endTime: '2021-02-04 12:00 AM', totalHours: 8, user_id: userDoctor6.id
#   DoctorCalendar.create! startDate: '2021-02-05', endDate: '2021-02-05', startTime: '2021-02-05 16:00 PM', endTime: '2021-02-05 12:00 AM', totalHours: 8, user_id: userDoctor6.id
#   DoctorCalendar.create! startDate: '2021-02-06', endDate: '2021-02-06', startTime: '2021-02-06 16:00 PM', endTime: '2021-02-06 12:00 AM', totalHours: 8, user_id: userDoctor6.iP
#   DoctorCalendar.create! startDate: '2021-02-07', endDate: '2021-02-07', startTime: '2021-02-07 16:00 PM', endTime: '2021-02-07 12:00 AM', totalHours: 8, user_id: userDoctor6.id
# 
#   DoctorCalendar.create! startDate: '2021-02-11', endDate: '2021-02-11', startTime: '2021-02-11 16:00 PM', endTime: '2021-02-11 12:00 AM', totalHours: 8, user_id: userDoctor6.id
#   DoctorCalendar.create! startDate: '2021-02-12', endDate: '2021-02-12', startTime: '2021-02-12 16:00 PM', endTime: '2021-02-12 12:00 AM', totalHours: 8, user_id: userDoctor6.id
#   DoctorCalendar.create! startDate: '2021-02-13', endDate: '2021-02-13', startTime: '2021-02-13 16:00 PM', endTime: '2021-02-13 12:00 AM', totalHours: 8, user_id: userDoctor6.id
#   DoctorCalendar.create! startDate: '2021-02-14', endDate: '2021-02-14', startTime: '2021-02-14 16:00 PM', endTime: '2021-02-14 12:00 AM', totalHours: 8, user_id: userDoctor6.id
#   DoctorCalendar.create! startDate: '2021-02-15', endDate: '2021-02-15', startTime: '2021-02-15 16:00 PM', endTime: '2021-02-15 12:00 AM', totalHours: 8, user_id: userDoctor6.id
#   DoctorCalendar.create! startDate: '2021-02-16', endDate: '2021-02-16', startTime: '2021-02-16 16:00 PM', endTime: '2021-02-16 12:00 AM', totalHours: 8, user_id: userDoctor6.id
#   DoctorCalendar.create! startDate: '2021-02-17', endDate: '2021-02-17', startTime: '2021-02-17 16:00 PM', endTime: '2021-02-17 12:00 AM', totalHours: 8, user_id: userDoctor6.id
# end

# 5.times do 
#   person7 = Person.create! fistName: Faker::Name.first_name, lastName: Faker::Name.last_name, documentId: Faker::IDNumber.chilean_id , phone: Faker::PhoneNumber.cell_phone_in_e164, historyNumber: Faker::IDNumber.valid 
#   userDoctor7 = User.create! email: Faker::Internet.email, password: '1234567890', username: Faker::Internet.username, role_id: role2.id, person_id: person7.id, department_id: department4.id
# 
#   DoctorCalendar.create! startDate: '2021-02-01', endDate: '2021-02-01', startTime: '2021-02-01 08:00 AM', endTime: '2021-02-01 16:00 PM', totalHours: 8, user_id: userDoctor7.id
#   DoctorCalendar.create! startDate: '2021-02-02', endDate: '2021-02-02', startTime: '2021-02-02 08:00 AM', endTime: '2021-02-02 16:00 PM', totalHours: 8, user_id: userDoctor7.id
#   DoctorCalendar.create! startDate: '2021-02-03', endDate: '2021-02-03', startTime: '2021-02-03 08:00 AM', endTime: '2021-02-03 16:00 PM', totalHours: 8, user_id: userDoctor7.id
#   DoctorCalendar.create! startDate: '2021-02-04', endDate: '2021-02-04', startTime: '2021-02-04 08:00 AM', endTime: '2021-02-04 16:00 PM', totalHours: 8, user_id: userDoctor7.id
#   DoctorCalendar.create! startDate: '2021-02-05', endDate: '2021-02-05', startTime: '2021-02-05 08:00 AM', endTime: '2021-02-05 16:00 PM', totalHours: 8, user_id: userDoctor7.id
#   DoctorCalendar.create! startDate: '2021-02-06', endDate: '2021-02-06', startTime: '2021-02-06 08:00 AM', endTime: '2021-02-06 16:00 PM', totalHours: 8, user_id: userDoctor7.id
#   DoctorCalendar.create! startDate: '2021-02-07', endDate: '2021-02-07', startTime: '2021-02-07 08:00 AM', endTime: '2021-02-07 16:00 PM', totalHours: 8, user_id: userDoctor7.id
# 
#   DoctorCalendar.create! startDate: '2021-02-11', endDate: '2021-02-11', startTime: '2021-02-11 08:00 AM', endTime: '2021-02-11 16:00 PM', totalHours: 8, user_id: userDoctor7.id
#   DoctorCalendar.create! startDate: '2021-02-12', endDate: '2021-02-12', startTime: '2021-02-12 08:00 AM', endTime: '2021-02-12 16:00 PM', totalHours: 8, user_id: userDoctor7.id
#   DoctorCalendar.create! startDate: '2021-02-13', endDate: '2021-02-13', startTime: '2021-02-13 08:00 AM', endTime: '2021-02-13 16:00 PM', totalHours: 8, user_id: userDoctor7.id
#   DoctorCalendar.create! startDate: '2021-02-14', endDate: '2021-02-14', startTime: '2021-02-14 08:00 AM', endTime: '2021-02-14 16:00 PM', totalHours: 8, user_id: userDoctor7.id
#   DoctorCalendar.create! startDate: '2021-02-15', endDate: '2021-02-15', startTime: '2021-02-15 08:00 AM', endTime: '2021-02-15 16:00 PM', totalHours: 8, user_id: userDoctor7.id
#   DoctorCalendar.create! startDate: '2021-02-16', endDate: '2021-02-16', startTime: '2021-02-16 08:00 AM', endTime: '2021-02-16 16:00 PM', totalHours: 8, user_id: userDoctor7.id
#   DoctorCalendar.create! startDate: '2021-02-17', endDate: '2021-02-17', startTime: '2021-02-17 08:00 AM', endTime: '2021-02-17 16:00 PM', totalHours: 8, user_id: userDoctor7.id
# end

# 5.times do 
#   person8 = Person.create! fistName: Faker::Name.first_name, lastName: Faker::Name.last_name, documentId: Faker::IDNumber.chilean_id , phone: Faker::PhoneNumber.cell_phone_in_e164, historyNumber: Faker::IDNumber.valid 
#   userDoctor8 = User.create! email: Faker::Internet.email, password: '1234567890', username: Faker::Internet.username, role_id: role2.id, person_id: person8.id, department_id: department4.id
# 
#   DoctorCalendar.create! startDate: '2021-02-01', endDate: '2021-02-01', startTime: '2021-02-01 16:00 PM', endTime: '2021-02-01 12:00 AM', totalHours: 8, user_id: userDoctor8.id
#   DoctorCalendar.create! startDate: '2021-02-02', endDate: '2021-02-02', startTime: '2021-02-02 16:00 PM', endTime: '2021-02-02 12:00 AM', totalHours: 8, user_id: userDoctor8.id
#   DoctorCalendar.create! startDate: '2021-02-03', endDate: '2021-02-03', startTime: '2021-02-03 16:00 PM', endTime: '2021-02-03 12:00 AM', totalHours: 8, user_id: userDoctor8.id
#   DoctorCalendar.create! startDate: '2021-02-04', endDate: '2021-02-04', startTime: '2021-02-04 16:00 PM', endTime: '2021-02-04 12:00 AM', totalHours: 8, user_id: userDoctor8.id
#   DoctorCalendar.create! startDate: '2021-02-05', endDate: '2021-02-05', startTime: '2021-02-05 16:00 PM', endTime: '2021-02-05 12:00 AM', totalHours: 8, user_id: userDoctor8.id
#   DoctorCalendar.create! startDate: '2021-02-06', endDate: '2021-02-06', startTime: '2021-02-06 16:00 PM', endTime: '2021-02-06 12:00 AM', totalHours: 8, user_id: userDoctor8.iP
#   DoctorCalendar.create! startDate: '2021-02-07', endDate: '2021-02-07', startTime: '2021-02-07 16:00 PM', endTime: '2021-02-07 12:00 AM', totalHours: 8, user_id: userDoctor8.id
# 
#   DoctorCalendar.create! startDate: '2021-02-11', endDate: '2021-02-11', startTime: '2021-02-11 16:00 PM', endTime: '2021-02-11 12:00 AM', totalHours: 8, user_id: userDoctor8.id
#   DoctorCalendar.create! startDate: '2021-02-12', endDate: '2021-02-12', startTime: '2021-02-12 16:00 PM', endTime: '2021-02-12 12:00 AM', totalHours: 8, user_id: userDoctor8.id
#   DoctorCalendar.create! startDate: '2021-02-13', endDate: '2021-02-13', startTime: '2021-02-13 16:00 PM', endTime: '2021-02-13 12:00 AM', totalHours: 8, user_id: userDoctor8.id
#   DoctorCalendar.create! startDate: '2021-02-14', endDate: '2021-02-14', startTime: '2021-02-14 16:00 PM', endTime: '2021-02-14 12:00 AM', totalHours: 8, user_id: userDoctor8.id
#   DoctorCalendar.create! startDate: '2021-02-15', endDate: '2021-02-15', startTime: '2021-02-15 16:00 PM', endTime: '2021-02-15 12:00 AM', totalHours: 8, user_id: userDoctor8.id
#   DoctorCalendar.create! startDate: '2021-02-16', endDate: '2021-02-16', startTime: '2021-02-16 16:00 PM', endTime: '2021-02-16 12:00 AM', totalHours: 8, user_id: userDoctor8.id
#   DoctorCalendar.create! startDate: '2021-02-17', endDate: '2021-02-17', startTime: '2021-02-17 16:00 PM', endTime: '2021-02-17 12:00 AM', totalHours: 8, user_id: userDoctor8.id
# end




# 5.times do 
#   person = Person.create! fistName: Faker::Name.first_name, lastName: Faker::Name.last_name, documentId: Faker::IDNumber.chilean_id, phone: Faker::PhoneNumber.cell_phone_in_e164, historyNumber: Faker::IDNumber.valid 
#   userPatient = User.create! email: Faker::Internet.email, password: '1234567890', username: Faker::Internet.username, role_id: role3.id, person_id: person.id  
# end

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


# Attend.create! totalShift: 10, department_id: department1.id, user_id: userDoctor.id, shiftName: 'Morning', startTime: '2021-09-25 8:00AM', endTime: '2021-09-25 8:15AM', startDate: '2021-09-25 ', endDate: '2021-09-25 '
#   Attend.create! totalShift: 10, department_id: department1.id, user_id: userDoctor.id, shiftName: 'Morning', startTime: '2021-09-25 8:15AM', endTime: '2021-09-25 8:30AM', startDate: '2021-09-25 ', endDate: '2021-09-25 '
#   Attend.create! totalShift: 10, department_id: department1.id, user_id: userDoctor.id, shiftName: 'Morning', startTime: '2021-09-25 8:30AM', endTime: '2021-09-25 8:45AM', startDate: '2021-09-25 ', endDate: '2021-09-25 '
#   Attend.create! totalShift: 10, department_id: department1.id, user_id: userDoctor.id, shiftName: 'Morning', startTime: '2021-09-25 8:45AM', endTime: '2021-09-25 9:00AM', startDate: '2021-09-25 ', endDate: '2021-09-25 '
#   Attend.create! totalShift: 10, department_id: department1.id, user_id: userDoctor.id, shiftName: 'Morning', startTime: '2021-09-25 9:00AM', endTime: '2021-09-25 9:15AM', startDate: '2021-09-25 ', endDate: '2021-09-25 '