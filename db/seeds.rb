# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"

specialties = ["Psychologist", "Ophtalmologist", "Pediatrician", "Proctologist", "Obstetrician"]

p "Creating doctors"
6.times do
  doctor = Doctor.new(name: Faker::Name.last_name, specialty: specialties.sample)
  doctor.save
end
p "Done"

p "Creating patients"
15.times do
  patient = Patient.new(name: Faker::Name.name)
  patient.save
end
p "Done"
