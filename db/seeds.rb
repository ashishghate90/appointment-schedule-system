# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Adding Admin
admin = User.create(email: "admin@test.com", password: "12345678", password_confirmation: "12345678", first_name: "Admin", last_name: "Test", username: "admin") 
admin.add_role "admin"

# Adding Doctors
doctors = [{email: "amitroy@doctor.com", password: "12345678", password_confirmation: "12345678", first_name: "Amit", last_name: "Roy", username: "amit"},
			{email: "sanjaysharma@doctor.com", password: "12345678", password_confirmation: "12345678", first_name: "Sanjay", last_name: "Sharma", username: "sanjy"},
			{email: "saurabhjain@doctor.com", password: "12345678", password_confirmation: "12345678", first_name: "Saurabh", last_name: "Jain", username: "saurabh"},
			{email: "sanketverma@doctor.com", password: "12345678", password_confirmation: "12345678", first_name: "Sanket", last_name: "Verma", username: "sanket"}]

			doctors.each do |doctor|
				user = User.create(email: doctor[:email], password: doctor[:password], password_confirmation: doctor[:password_confirmation], first_name: doctor[:first_name], last_name: doctor[:last_name], username: doctor[:username]) 
				user.add_role "doctor"
			end


# Adding Patients
patients = [{email: "khushbupal@patient.com", password: "12345678", password_confirmation: "12345678", first_name: "Khushbu", last_name: "Pal", username: "khushabu"},
			{email: "arjunmetha@patient.com", password: "12345678", password_confirmation: "12345678", first_name: "Arjun", last_name: "Mehta", username: "arjun"},
			{email: "rajtakur@patient.com", password: "12345678", password_confirmation: "12345678", first_name: "Raj", last_name: "Thakur", username: "raj"},
			{email: "shubhamrajput@patient.com", password: "12345678", password_confirmation: "12345678", first_name: "Shubham", last_name: "Rajput", username: "shubham"},
			{email: "ronakchouhan@patient.com", password: "12345678", password_confirmation: "12345678", first_name: "Ronak", last_name: "Chouhan", username: "ronak"},
			{email: "kartikpatil@patient.com", password: "12345678", password_confirmation: "12345678", first_name: "Kartik", last_name: "Patil", username: "kartik"},
			{email: "akshaykumar@patient.com", password: "12345678", password_confirmation: "12345678", first_name: "Akshay", last_name: "kumar", username: "akshay"},
			{email: "ranbeerkapoor@patient.com", password: "12345678", password_confirmation: "12345678", first_name: "Ranbeer", last_name: "Kapoor", username: "ranbeer"}]

			patients.each do |patient|
				user = User.create(email: patient[:email], password: patient[:password], password_confirmation: patient[:password_confirmation], first_name: patient[:first_name], last_name: patient[:last_name], username: patient[:username]) 
				user.add_role "patient"
			end