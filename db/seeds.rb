# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


p "cleaning db"

Movie.delete_all

p "seeding 50 movies"

50.times {
  Movie.create(title: Faker::BossaNova.song, overview: Faker::Lorem.sentences(number: 1), poster_url: "https://picsum.photos/200/300?grayscale", rating: rand(0.0..10.0).round(1))
}

p "seeding done"
