# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# 1. Clean the database 🗑️
puts "Cleaning database..."
Restaurant.destroy_all

restaurants = [
  { name: "Sushi Zen", address: "123 Tokyo St", phone_number: "03-1234-5678", category: "japanese" },
  { name: "Pasta Paradise", address: "456 Rome Ave", phone_number: "06-9876-5432", category: "italian" },
  { name: "Le Gourmet", address: "789 Paris Blvd", phone_number: "01-2345-6789", category: "french" },
  { name: "Dragon Wok", address: "321 Beijing Rd", phone_number: "02-3456-7890", category: "chinese" },
  { name: "Brussels Bites", address: "654 Brussels Sq", phone_number: "03-5678-9012", category: "belgian" }
]

restaurants.each do |attributes|
  Restaurant.create(attributes)
end

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
