# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Role.delete_all
Person.delete_all
DoctorCalendar.delete_all
Department.delete_all


role1 = Role.create(name: 'Admin')
role2 = Role.create(name: 'Doctor')
role3 = Role.create(name: 'Patient')

department1 = Department.create! name: 'Surgery', contactNumber: Faker::PhoneNumber.cell_phone_in_e164, location: Faker::Address.street_address 
department2 = Department.create! name: 'Medicine', contactNumber: Faker::PhoneNumber.cell_phone_in_e164, location: Faker::Address.street_address 
department3 = Department.create! name: 'Cancer Care', contactNumber: Faker::PhoneNumber.cell_phone_in_e164, location: Faker::Address.street_address 
department4 = Department.create! name: 'Urology', contactNumber: Faker::PhoneNumber.cell_phone_in_e164, location: Faker::Address.street_address 

1.times do 
  person = Person.create! fistName: Faker::Name.first_name, lastName: Faker::Name.last_name, documentId: Faker::IDNumber.chilean_id , phone: Faker::PhoneNumber.cell_phone_in_e164, historyNumber: Faker::IDNumber.valid 
  User.create! email: Faker::Internet.email, password: '1234567890', username: Faker::Internet.username, role_id: role1.id, person_id: person.id
end

5.times do 
  person = Person.create! fistName: Faker::Name.first_name, lastName: Faker::Name.last_name, documentId: Faker::IDNumber.chilean_id , phone: Faker::PhoneNumber.cell_phone_in_e164, historyNumber: Faker::IDNumber.valid 
  userDoctor = User.create! email: Faker::Internet.email, password: '1234567890', username: Faker::Internet.username, role_id: role2.id, person_id: person.id

  DoctorCalendar.create! startDate: '2021-09-25', endDate: '2021-09-25', startTime: '2021-09-23 10:00 AM', endTime: '2021-09-23 10:15 AM', totalHours: 5, user_id: userDoctor.id
  DoctorCalendar.create! startDate: '2021-09-25', endDate: '2021-09-25', startTime: '2021-09-23 10:15 AM', endTime: '2021-09-23 10:30 AM', totalHours: 5, user_id: userDoctor.id
  DoctorCalendar.create! startDate: '2021-09-25', endDate: '2021-09-25', startTime: '2021-09-23 10:30 AM', endTime: '2021-09-23 10:45 AM', totalHours: 5, user_id: userDoctor.id
  DoctorCalendar.create! startDate: '2021-09-25', endDate: '2021-09-25', startTime: '2021-09-23 10:45 AM', endTime: '2021-09-23 11:00 AM', totalHours: 5, user_id: userDoctor.id
  DoctorCalendar.create! startDate: '2021-09-25', endDate: '2021-09-25', startTime: '2021-09-23 11:00 AM', endTime: '2021-09-23 11:15 AM', totalHours: 5, user_id: userDoctor.id
  DoctorCalendar.create! startDate: '2021-09-25', endDate: '2021-09-25', startTime: '2021-09-23 11:15 AM', endTime: '2021-09-23 11:30 AM', totalHours: 5, user_id: userDoctor.id
  DoctorCalendar.create! startDate: '2021-09-25', endDate: '2021-09-25', startTime: '2021-09-23 11:30 AM', endTime: '2021-09-23 11:45 AM', totalHours: 5, user_id: userDoctor.id
end


5.times do 
  person = Person.create! fistName: Faker::Name.first_name, lastName: Faker::Name.last_name, documentId: Faker::IDNumber.chilean_id, phone: Faker::PhoneNumber.cell_phone_in_e164, historyNumber: Faker::IDNumber.valid 
  userPatient = User.create! email: Faker::Internet.email, password: '1234567890', username: Faker::Internet.username, role_id: role3.id, person_id: person.id  
end

Attend.create! totalShift: 10, department_id: department1.id, user_id: User.first.id
Attend.create! totalShift: 10, department_id: department2.id, user_id: User.second.id
Attend.create! totalShift: 10, department_id: department3.id, user_id: User.last.id