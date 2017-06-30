# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all

50.times do |index|
  Product.create!(name: Faker::Food.unique.ingredient,
    description: Faker::Lorem.sentence(20, false, 0).chop,
    cost: Faker::Commerce.price,
    country: Faker::Address.country)
end

p "Created #{Product.count} products"
