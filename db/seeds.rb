# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.all.destroy
# Location.all.destroy
# Favorite.all.destroy
# Faker::UniqueGenerator.clear
5.times do 
  User.create(
    username: Faker::Lorem.unique.word,
    email: Faker::Internet.unique.email,
    password: "123123123"
  )
end

  30.times do 
    Location.create(
      slug: Faker::Lorem.unique.word,
      lat: Faker::Address.latitude,
      long: Faker::Address.longitude
    )
  end

  15.times do 
    Favorite.create(
      user_id: User.all.sample.id,
      location_id: Location.all.sample.id
    )
  end


