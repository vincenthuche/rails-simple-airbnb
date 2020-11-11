# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."
flat1 = { name: "Flat 1", address: "7 Boundary St, London E2 7JE", description: "Amazing", price_per_night: 50, number_of_guests: 3 }
flat2 = { name: "Flat 2", address: "8 Boundary St, London E2 7JE", description: "Fantastic", price_per_night: 60, number_of_guests: 10 }
flat3 = { name: "Flat 3", address: "8 Boundary St, London E2 7JE", description: "Terrible", price_per_night: 70, number_of_guests: 50 }
flat4 = { name: "Flat 4", address: "10 Boundary St, London E2 7JE", description: "Normal", price_per_night: 150, number_of_guests: 1 }
flat5 = { name: "Flat 5", address: "11 Boundary St, London E2 7JE", description: "I recommand", price_per_night: 250, number_of_guests: 22 }

[flat1, flat2, flat3, flat4, flat5].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts "Finished!"
