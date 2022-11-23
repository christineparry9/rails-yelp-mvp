# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'
Restaurant.destroy_all


10.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  puts "i am a restaurant"
  5.times do
    review = Review.new(
      content: Faker::Quote.famous_last_words,
      rating: [0, 1, 2, 3, 4, 5].sample
    )
  restaurant.save!
  review.restaurant = restaurant
  review.save!
  puts "i am a review"

  end

end
