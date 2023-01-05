# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database 🗑️"
Restaurant.destroy_all

puts "Creating restaurants 🌭 "
panda_express = {name: "Panda Express", address: "Market Street", phone_number: "555-555-5550", category: "chinese"}
il_forno_trattoria =  {name: "Il Forno Trattoria", address: "Broadway Avenue", phone_number: "555-555-5551", category: "italian"}
akashi_sushi =  {name: "Akashi Sushi", address: "Park Place", phone_number: "555-555-5552", category: "japanese"}
le_bistrot_de_paris =  {name: "Le Bistro de Paris", address: "Fifth Avenue", phone_number: "555-555-5553", category: "french"}
belgium_waffles_frites =  {name: "Belgium Waffles & Frites", address: "Ocean Avenue", phone_number: "555-555-5554", category: "belgian"}


[panda_express, il_forno_trattoria, akashi_sushi, le_bistrot_de_paris, belgium_waffles_frites].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished! 🎉"
