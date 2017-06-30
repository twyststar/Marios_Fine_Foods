# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
Review.destroy_all

@products = []

50.times do |index|

  product = Product.create!(
    name: Faker::Food.unique.ingredient,
    description: Faker::Lorem.sentence(20, false, 0).chop,
    cost: Faker::Commerce.price,
    country: Faker::Address.country)
  @products.push(product.id)
end

250.times do |index|
  Review.create!(
    name: Faker::Name.name,
    rating: Faker::Number.between(1, 5),
    content_body: Faker::StarWars.quote,
    product_id: Faker::Number.between(@products[0],@products[49])
  )
end

p "Created #{Product.count} products"
