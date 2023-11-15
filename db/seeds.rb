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
Flat.destroy_all

puts "Creating restaurants..."
flat1 = {name: "Matosinhos view", address:"Matosinhos", description: "Flat with a sea view", price_per_night:"80", number_of_guests:"4"}
falt2 = {name: "Porto view", address:"Porto", description: "Flat with a river view", price_per_night:"150", number_of_guests:"4"}
falt3 = {name: "Gaia wine", address:"Gaia", description: "Flat with near wine cellars", price_per_night:"100", number_of_guests:"4"}
falt4 = {name: "Beach side", address:"Leça da Palmeira", description: "Flat near the beach", price_per_night:"150", number_of_guests:"4"}


[flat1, falt2, falt3, falt4].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts "Finished!"
