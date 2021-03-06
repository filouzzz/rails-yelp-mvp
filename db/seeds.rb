# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

category = %w(chinese italian japanese french belgian)


puts "Deleting all Restaurants"
Restaurant.destroy_all
puts "Creating 50 restaurants"
50.times do
  restaurant = Restaurant.create!(name: Faker::Cat.name, address: "#{Faker::Address.street_address} #{Faker::Address.zip_code} #{Faker::Address.city}", category: category.sample)
  puts "Created #{restaurant.name}"
end

puts "Bye!"
