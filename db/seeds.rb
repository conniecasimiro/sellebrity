require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
Celeb.destroy_all
counter = 1
25.times do
  counter += 1
  user = User.new(
      first_name: Faker::Name.first_name,
      last_name:  Faker::Name.last_name,
      email: Faker::Internet.email,
      password: 123456

  )
  user.save!
  celeb = Celeb.new(
    first_name: Faker::Name.first_name,
    last_name:  Faker::Name.last_name,
    service:  Faker::Company.industry,
    bio:  Faker::TvShows::Community.quotes,
    photo_url:  Faker::Company.logo,
    price:  rand(250..500),
    user_id: user.id
  )

  celeb.save!
end
