
Profile.destroy_all
User.destroy_all

5.times do
  User.create(
    email: Faker::Internet.email,
    password: 'password',
    password_confirmation: 'password'
  )
  puts 'usuario criado'
end

images = {
  brazil: Rails.root.join("app/assets/images/perfil1.png"),
  portugal: Rails.root.join("app/assets/images/perfil2.png"),
  france: Rails.root.join("app/assets/images/perfil4.png"),
  spain: Rails.root.join("app/assets/images/perfil3.png"),
  italy: Rails.root.join("app/assets/images/perfil5.png")
}


3.times do
<<<<<<< HEAD
  file = File.open(images[:brazil])
=======
  #file = URI.parse(images[:brazil]).open
>>>>>>> master
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
  #profile.photo.attach(io: file, filename: "perfil1.png", content_type: "image/png")
  profile.save!
  puts 'Profile Brazil criado'
end

3.times do
  file = File.open(images[:portugal])
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
  profile.photo.attach(io: file, filename: "perfil2.png", content_type: "image/png")
  profile.save!
  puts 'Profile Portugal criado'
end

3.times do
  file = File.open(images[:france])
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
  profile.photo.attach(io: file, filename: "perfil4.png", content_type: "image/png")
  profile.save!
  puts 'Profile France criado'
end

3.times do
  file = File.open(images[:spain])
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
  profile.photo.attach(io: file, filename: "perfil3.png", content_type: "image/png")
  profile.save!
  puts 'Profile Spain criado'
end

3.times do
  file = File.open(images[:italy])
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
  profile.photo.attach(io: file, filename: "perfil5.png", content_type: "image/png")
  profile.save!
  puts 'Profile Spain criado'
end
