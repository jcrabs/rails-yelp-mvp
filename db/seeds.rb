# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
Restaurant.create(name: "number 1", address: "Berlin", phone_number: "1", category: "french")
Restaurant.create(name: "number 2", address: "Munich", phone_number: "2", category: "chinese")
Restaurant.create(name: "number 3", address: "London", phone_number: "3", category: "italian")
Restaurant.create(name: "number 4", address: "SF", phone_number: "4", category: "japanese")
Restaurant.create(name: "number 5", address: "Tokyo", phone_number: "5", category: "belgian")
puts "Created #{Restaurant.all.length} restaurants."
