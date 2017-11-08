# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  restaurant = Restaurant.new(
    name: Faker::GameOfThrones.house,
    address: Faker::GameOfThrones.city,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample)
  restaurant.save

  review = Review.new(
    content: Faker::ChuckNorris.fact,
    rating:(0..5).to_a.sample
    )
  review.restaurant = restaurant
  review.save
end

