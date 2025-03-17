# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Profile.destroy_all
User.destroy_all

50.times do
  User.create(
    email: Faker::Internet.email,
    password: 'password',
    password_confirmation: 'password'
  )
end


require 'open-uri'


images = {
  brazil: "https://res.cloudinary.com/dslrqpyd7/image/upload/v1742153667/cld-sample.png",
  portugal: "https://res.cloudinary.com/dslrqpyd7/image/upload/v1742153560/charlesdeluvio-K4mSJ7kc0As-unsplash_dtr15b_ctqkej.png",
  france: "https://res.cloudinary.com/dslrqpyd7/image/upload/v1742153446/matheus-ferrero-W7b3eDUb_2I-unsplash_fk0x8m_rvm0fa.png",
  spain: "https://res.cloudinary.com/dslrqpyd7/image/upload/v1742153528/vince-veras-AJIqZDAUD7A-unsplash_gk5upv_gcwqsz.png",
  italy: "https://res.cloudinary.com/dslrqpyd7/image/upload/v1742153716/samples/smile.png"
}


10.times do
  file = URI.parse(images[:brazil]).open
  profile = Profile.new(
    name: Faker::Name.name,
    bio: "I am #{Faker::Name.first_name}, a person who loves to travel. I am #{rand(18..65)} years old and enjoy exploring new cultures and landscapes. In my free time, I like to practice outdoor sports and hang out with friends at parties.",
    country: 'Brazil',
    city: 'Rio de Janeiro',
    traveler: Faker::Boolean.boolean,
    preferences: Faker::Lorem.words(number: 3).join(', '),
    food: Faker::Food.dish,
    animal: ["cat", "dog", "bird", "hamster"].sample,
    availability: ["available on weekends", "available on Tuesdays and Thursdays", "available every afternoon"].sample,
    language: 'English, Portuguese',
    user_id: User.all.sample.id
  )
  profile.photo.attach(io: file, filename: "perfil1.png", content_type: "image/png")
  profile.save
end

10.times do
  file = URI.parse(images[:portugal]).open
  profile = Profile.new(
    name: Faker::Name.name,
    bio: "I am #{Faker::Name.first_name}, a born traveler, and I am #{rand(18..65)} years old. I love nature and always look for new places to explore. In my free time, I enjoy reading and relaxing in cafes.",
    country: 'Portugal',
    city: 'Lisbon',
    traveler: Faker::Boolean.boolean,
    preferences: Faker::Lorem.words(number: 3).join(', '),
    food: Faker::Food.dish,
    animal: ["cat", "dog", "rabbit", "bird"].sample,
    availability: ["available on weekends", "available only at night", "available on Mondays and Fridays"].sample,
    language: 'English, Portuguese',
    user_id: User.all.sample.id
  )
  profile.photo.attach(io: file, filename: "perfil5.png", content_type: "image/png")
  profile.save
end

10.times do
  file = URI.parse(images[:france]).open
  profile = Profile.new(
    name: Faker::Name.name,
    bio: "I am #{Faker::Name.first_name}, #{rand(18..65)} years old, and I love adventure. I enjoy parties and meeting new people. On my travels, I always look for places with a lively atmosphere.",
    country: 'France',
    city: 'Paris',
    traveler: Faker::Boolean.boolean,
    preferences: Faker::Lorem.words(number: 3).join(', '),
    food: Faker::Food.dish,
    animal: ["cat", "dog", "fish", "horse"].sample,
    availability: ["available on weekends", "available on Tuesdays and Thursdays", "available every morning"].sample,
    language: 'English, French',
    user_id: User.all.sample.id
  )
  profile.photo.attach(io: file, filename: "perfil8.png", content_type: "image/png")
  profile.save
end

10.times do
  file = URI.parse(images[:spain]).open
  profile = Profile.new(
    name: Faker::Name.name,
    bio: "I am #{Faker::Name.first_name}, #{rand(18..65)} years old, and passionate about new experiences. When I travel, I enjoy spending time at the beach and exploring the local cuisine.",
    country: 'Spain',
    city: 'Barcelona',
    traveler: Faker::Boolean.boolean,
    preferences: Faker::Lorem.words(number: 3).join(', '),
    food: Faker::Food.dish,
    animal: ["cat", "dog", "rabbit", "hamster"].sample,
    availability: ["available on weekends", "available on Saturdays", "available on Tuesdays and Thursdays"].sample,
    language: 'English, Spanish',
    user_id: User.all.sample.id
  )
  profile.photo.attach(io: file, filename: "perfil7.png", content_type: "image/png")
  profile.save
end

10.times do
  file = URI.parse(images[:italy]).open
  profile = Profile.new(
    name: Faker::Name.name,
    bio: "I am #{Faker::Name.first_name}, #{rand(18..65)} years old and an adventurer. When I travel, I love exploring mountains and meeting new people. I am also a fan of art and enjoy visiting museums.",
    country: 'Italy',
    city: 'Milan',
    traveler: Faker::Boolean.boolean,
    preferences: Faker::Lorem.words(number: 3).join(', '),
    food: Faker::Food.dish,
    animal: ["cat", "dog", "bird", "rabbit"].sample,
    availability: ["available on weekends", "available on Mondays", "available every afternoon"].sample,
    language: 'English, Italian',
    user_id: User.all.sample.id
  )
  profile.photo.attach(io: file, filename: "perfil2.png", content_type: "image/png")
  profile.save
end
