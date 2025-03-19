
Profile.destroy_all
User.destroy_all


puts "creating user 1"
user1 = User.create!(email: 'user1@brazil.com', password: 'password', password_confirmation: 'password')
profile1 = Profile.create!(
  name: 'Carlos Silva',
  bio: 'I am Carlos, a lover of outdoor sports and adventures. I enjoy exploring new cultures and practicing sports with friends.',
  country: 'Brazil',
  city: 'Rio de Janeiro',
  traveler: false,
  preferences: 'Adventure, Culture, Sports',
  food: 'Feijoada',
  animal: 'Dog',
  availability: 'Available on weekends',
  language: 'Portuguese, English',
  user: user1
)
file1 = Rails.root.join("app/assets/images/perfil1.png")
profile1.photo.attach(io: File.open(file1), filename: "perfil1.png", content_type: "image/png")
profile1.save
puts "user 1 created"

puts "creating user 2"
user2 = User.create!(email: 'user2@brazil.com', password: 'password', password_confirmation: 'password')
profile2 = Profile.create!(
  name: 'Ana Oliveira',
  bio: 'I am Ana, a nature and travel enthusiast. I love hiking and outdoor photography.',
  country: 'Brazil',
  city: 'Rio de Janeiro',
  traveler: false,
  preferences: 'Nature, Photography, Adventures',
  food: 'Açaí',
  animal: 'Cat',
  availability: 'Available during the week',
  language: 'Portuguese, Spanish',
  user: user2
)
file2 = Rails.root.join("app/assets/images/perfil2.png")
profile2.photo.attach(io: File.open(file2), filename: "perfil2.png", content_type: "image/png")
profile2.save
puts "user 2 created"

puts "creating user 3"
user3 = User.create!(email: 'user3@brazil.com', password: 'password', password_confirmation: 'password')
profile3 = Profile.create!(
  name: 'Roberto Souza',
  bio: 'I am Roberto, a lover of music and cultural events. I enjoy exploring the city and discovering new bands.',
  country: 'Brazil',
  city: 'Rio de Janeiro',
  traveler: false,
  preferences: 'Music, Culture, Fun',
  food: 'Barbecue',
  animal: 'Dog',
  availability: 'Available on weekends',
  language: 'Portuguese, English',
  user: user3
)
file3 = Rails.root.join("app/assets/images/perfil3.png")
profile3.photo.attach(io: File.open(file3), filename: "perfil3.png", content_type: "image/png")
profile3.save
puts "user 3 created"

puts "creating user 4"
user4 = User.create!(email: 'user1@portugal.com', password: 'password', password_confirmation: 'password')
profile4 = Profile.create!(
  name: 'João Costa',
  bio: 'I am João, a lover of travel and nature. I enjoy relaxing in cafés and exploring new tourist destinations.',
  country: 'Portugal',
  city: 'Lisbon',
  traveler: false,
  preferences: 'Nature, Coffee, Books',
  food: 'Bacalhau',
  animal: 'Cat',
  availability: 'Available only at night',
  language: 'Portuguese, English',
  user: user4
)
file4 = Rails.root.join("app/assets/images/perfil4.png")
profile4.photo.attach(io: File.open(file4), filename: "perfil4.png", content_type: "image/png")
profile4.save
puts "user 4 created"

puts "creating user 5"
user5 = User.create!(email: 'user2@portugal.com', password: 'password', password_confirmation: 'password')
profile5 = Profile.create!(
  name: 'Sofia Almeida',
  bio: 'I am Sofia, passionate about art and history. I enjoy cultural tours and exploring museums in Lisbon.',
  country: 'Portugal',
  city: 'Lisbon',
  traveler: false,
  preferences: 'Art, History, Museums',
  food: 'Pastel de Nata',
  animal: 'Rabbit',
  availability: 'Available on weekends',
  language: 'Portuguese, French',
  user: user5
)
file5 = Rails.root.join("app/assets/images/perfil5.png")
profile5.photo.attach(io: File.open(file5), filename: "perfil5.png", content_type: "image/png")
profile5.save
puts "user 5 created"

puts "creating user 6"
user6 = User.create!(email: 'user3@portugal.com', password: 'password', password_confirmation: 'password')
profile6 = Profile.create!(
  name: 'Miguel Pereira',
  bio: 'I am Miguel, a gastronomy and travel enthusiast. I enjoy exploring markets and trying new dishes.',
  country: 'Portugal',
  city: 'Lisbon',
  traveler: false,
  preferences: 'Gastronomy, Culture, Markets',
  food: 'Francesinha',
  animal: 'Bird',
  availability: 'Available on Sundays',
  language: 'Portuguese, English',
  user: user6
)
file6 = Rails.root.join("app/assets/images/perfil1.png")
profile6.photo.attach(io: File.open(file6), filename: "perfil1.png", content_type: "image/png")
profile6.save
puts "user 6 created"

puts "creating user 7"
user7 = User.create!(email: 'user1@france.com', password: 'password', password_confirmation: 'password')
profile7 = Profile.create!(
  name: 'Pierre Dubois',
  bio: 'I am Pierre, an adventurer who loves parties and meeting new people. Always looking for places with good vibes and energy.',
  country: 'France',
  city: 'Paris',
  traveler: false,
  preferences: 'Parties, Adventure, Culture',
  food: 'Croissant',
  animal: 'Dog',
  availability: 'Available on weekends',
  language: 'French, English',
  user: user7
)
file7 = Rails.root.join("app/assets/images/perfil5.png")
profile7.photo.attach(io: File.open(file7), filename: "perfil5.png", content_type: "image/png")
profile7.save
puts "user 7 created"

puts "creating user 8"
user8 = User.create!(email: 'user2@france.com', password: 'password', password_confirmation: 'password')
profile8 = Profile.create!(
  name: 'Claire Martin',
  bio: 'I am Claire, a lover of fashion and art. I enjoy strolling around the city and exploring local boutiques.',
  country: 'France',
  city: 'Paris',
  traveler: false,
  preferences: 'Fashion, Art, Shopping',
  food: 'Quiche Lorraine',
  animal: 'Cat',
  availability: 'Available in the afternoons',
  language: 'French, English',
  user: user8
)
file8 = Rails.root.join("app/assets/images/perfil2.png")
profile8.photo.attach(io: File.open(file8), filename: "perfil2.png", content_type: "image/png")
profile8.save
puts "user 8 created"

puts "creating user 9"
user9 = User.create!(email: 'user3@france.com', password: 'password', password_confirmation: 'password')
profile9 = Profile.create!(
  name: 'Julien Lefevre',
  bio: 'I am Julien, passionate about history and architecture. I enjoy exploring museums and historical monuments in Paris.',
  country: 'France',
  city: 'Paris',
  traveler: false,
  preferences: 'History, Architecture, Museums',
  food: 'Baguette',
  animal: 'Bird',
  availability: 'Available on Saturdays',
  language: 'French, Spanish',
  user: user9
)
file9 = Rails.root.join("app/assets/images/perfil3.png")
profile9.photo.attach(io: File.open(file9), filename: "perfil3.png", content_type: "image/png")
profile9.save
puts "user 9 created"

puts "creating user 10"
user10 = User.create!(email: 'user1@spain.com', password: 'password', password_confirmation: 'password')
profile10 = Profile.create!(
  name: 'Maria García',
  bio: 'I am Maria, passionate about new experiences, especially at the beach and exploring local gastronomy. Always looking for the best of every place.',
  country: 'Spain',
  city: 'Barcelona',
  traveler: false,
  preferences: 'Beach, Gastronomy, Culture',
  food: 'Paella',
  animal: 'Rabbit',
  availability: 'Available on Saturdays',
  language: 'Spanish, English',
  user: user10
)
file10 = Rails.root.join("app/assets/images/perfil2.png")
profile10.photo.attach(io: File.open(file10), filename: "perfil2.png", content_type: "image/png")
profile10.save
puts "user 10 created"

puts "creating user 11"
user11 = User.create!(email: 'user2@spain.com', password: 'password', password_confirmation: 'password')
profile11 = Profile.create!(
  name: 'Carlos Martínez',
  bio: 'I am Carlos, a lover of extreme sports and outdoor life. I love surfing and exploring new beaches in Barcelona.',
  country: 'Spain',
  city: 'Barcelona',
  traveler: false,
  preferences: 'Extreme Sports, Beach, Adventures',
  food: 'Tapas',
  animal: 'Dog',
  availability: 'Available during the week',
  language: 'Spanish, English',
  user: user11
)
file11 = Rails.root.join("app/assets/images/perfil1.png")
profile11.photo.attach(io: File.open(file11), filename: "perfil1.png", content_type: "image/png")
profile11.save
puts "user 11 created"

puts "creating user 12"
user12 = User.create!(email: 'user3@spain.com', password: 'password', password_confirmation: 'password')
profile12 = Profile.create!(
  name: 'Lucía Fernández',
  bio: 'I am Lucía, passionate about nightlife and music. I enjoy parties, bars, and discovering new places in Barcelona.',
  country: 'Spain',
  city: 'Barcelona',
  traveler: false,
  preferences: 'Parties, Music, Culture',
  food: 'Paella',
  animal: 'Cat',
  availability: 'Available on Sundays',
  language: 'Spanish, French',
  user: user12
)
file12 = Rails.root.join("app/assets/images/perfil5.png")
profile12.photo.attach(io: File.open(file12), filename: "perfil5.png", content_type: "image/png")
profile12.save
puts "user 12 created"

puts "creating user 13"
user13 = User.create!(email: 'user1@italy.com', password: 'password', password_confirmation: 'password')
profile13 = Profile.create!(
  name: 'Giulia Rossi',
  bio: 'I am Giulia, an adventurer who loves exploring mountains and meeting new people. Passionate about art and museums.',
  country: 'Italy',
  city: 'Milan',
  traveler: false,
  preferences: 'Art, Mountains, Culture',
  food: 'Pizza',
  animal: 'Bird',
  availability: 'Available in the afternoons',
  language: 'Italian, English',
  user: user13
)
file13 = Rails.root.join("app/assets/images/perfil2.png")
profile13.photo.attach(io: File.open(file13), filename: "perfil2.png", content_type: "image/png")
profile13.save
puts "user 13 created"

puts "creating user 14"
user14 = User.create!(email: 'user2@italy.com', password: 'password', password_confirmation: 'password')
profile14 = Profile.create!(
  name: 'Luca Bianchi',
  bio: 'I am Luca, a lover of design and architecture. I enjoy strolling around Milan and exploring design shops.',
  country: 'Italy',
  city: 'Milan',
  traveler: false,
  preferences: 'Design, Architecture, Shopping',
  food: 'Risotto',
  animal: 'Cat',
  availability: 'Available during the week',
  language: 'Italian, English',
  user: user14
)
file14 = Rails.root.join("app/assets/images/perfil4.png")
profile14.photo.attach(io: File.open(file14), filename: "perfil4.png", content_type: "image/png")
profile14.save
puts "user 14 created"

puts "creating user 15"
user15 = User.create!(email: 'user3@italy.com', password: 'password', password_confirmation: 'password')
profile15 = Profile.create!(
  name: 'Federica Caruso',
  bio: 'I am Federica, a fan of fashion and gastronomy. I enjoy visiting markets and restaurants in Milan.',
  country: 'Italy',
  city: 'Milan',
  traveler: false,
  preferences: 'Fashion, Gastronomy, Shopping',
  food: 'Tiramisu',
  animal: 'Rabbit',
  availability: 'Available on weekends',
  language: 'Italian, English',
  user: user15
)
file15 = Rails.root.join("app/assets/images/perfil5.png")
profile15.photo.attach(io: File.open(file15), filename: "perfil5.png", content_type: "image/png")
profile15.save
puts "user 15 created"

puts "All users and profiles created successfully!"


# Criando todos os usuários e perfis
puts "creating user 16"
user16 = User.create!(email: 'user4@brazil.com', password: 'password', password_confirmation: 'password')
profile16 = Profile.create!(
  name: 'Luiz Pereira',
  bio: 'I am Luiz, a nature lover and beach enthusiast. I enjoy spending my weekends hiking and visiting local parks.',
  country: 'Brazil',
  city: 'Rio de Janeiro',
  traveler: false,
  preferences: 'Nature, Hiking, Photography',
  food: 'Feijoada',
  animal: 'Dog',
  availability: 'Available on weekends',
  language: 'Portuguese, English',
  user: user16
)
file16 = Rails.root.join("app/assets/images/perfil5.png")
profile16.photo.attach(io: File.open(file1), filename: "perfil5.png", content_type: "image/png")
profile16.save
puts "user 16 created"

puts "creating user 17"
user17 = User.create!(email: 'user5@brazil.com', password: 'password', password_confirmation: 'password')
profile17 = Profile.create!(
  name: 'Mariana Costa',
  bio: 'I am Mariana, a food lover with a passion for trying new dishes. I love exploring the local food scene and discovering hidden gems in the city.',
  country: 'Brazil',
  city: 'Rio de Janeiro',
  traveler: false,
  preferences: 'Food, Culture, Local Cuisine',
  food: 'Pão de Queijo',
  animal: 'Cat',
  availability: 'Available during the week',
  language: 'Portuguese, Spanish',
  user: user17
)
file17 = Rails.root.join("app/assets/images/perfil4.png")
profile17.photo.attach(io: File.open(file2), filename: "perfil4.png", content_type: "image/png")
profile17.save
puts "user 17 created"

puts "creating user 18"
user18 = User.create!(email: 'user6@brazil.com', password: 'password', password_confirmation: 'password')
profile18 = Profile.create!(
  name: 'Gabriel Almeida',
  bio: 'I am Gabriel, an architect with a love for urban exploration. I enjoy discovering the city’s hidden architectural wonders and parks.',
  country: 'Brazil',
  city: 'Rio de Janeiro',
  traveler: false,
  preferences: 'Architecture, Urban Exploration, Nature',
  food: 'Churrasco',
  animal: 'Bird',
  availability: 'Available on weekends',
  language: 'Portuguese, English',
  user: user18
)
file18 = Rails.root.join("app/assets/images/perfil1.png")
profile18.photo.attach(io: File.open(file3), filename: "perfil1.png", content_type: "image/png")
profile18.save
puts "user 18 created"

puts "creating user 19"
user19 = User.create!(email: 'user4@portugal.com', password: 'password', password_confirmation: 'password')
profile19 = Profile.create!(
  name: 'Pedro Silva',
  bio: 'I am Pedro, an avid reader and lover of Lisbon’s cafes. I enjoy relaxing with a good book and discovering new places in the city.',
  country: 'Portugal',
  city: 'Lisbon',
  traveler: false,
  preferences: 'Literature, Coffee, Walking Tours',
  food: 'Bacalhau',
  animal: 'Rabbit',
  availability: 'Available on weekdays',
  language: 'Portuguese, English',
  user: user19
)
file19 = Rails.root.join("app/assets/images/perfil4.png")
profile19.photo.attach(io: File.open(file4), filename: "perfil4.png", content_type: "image/png")
profile19.save
puts "user 19 created"

puts "creating user 20"
user20 = User.create!(email: 'user5@portugal.com', password: 'password', password_confirmation: 'password')
profile20 = Profile.create!(
  name: 'Helena Martins',
  bio: 'I am Helena, a photographer who loves capturing the essence of Lisbon. I enjoy exploring the city’s markets and photographing local life.',
  country: 'Portugal',
  city: 'Lisbon',
  traveler: false,
  preferences: 'Photography, Culture, City Life',
  food: 'Pastel de Nata',
  animal: 'Cat',
  availability: 'Available on weekends',
  language: 'Portuguese, English',
  user: user20
)
file20 = Rails.root.join("app/assets/images/perfil1.png")
profile20.photo.attach(io: File.open(file5), filename: "perfil1.png", content_type: "image/png")
profile20.save
puts "user 20 created"

puts "creating user 21"
user21 = User.create!(email: 'user6@portugal.com', password: 'password', password_confirmation: 'password')
profile21 = Profile.create!(
  name: 'Miguel Costa',
  bio: 'I am Miguel, a history enthusiast and lover of Lisbon’s old buildings. I love visiting historic sites and learning more about the city’s past.',
  country: 'Portugal',
  city: 'Lisbon',
  traveler: false,
  preferences: 'History, Architecture, Museums',
  food: 'Francesinha',
  animal: 'Dog',
  availability: 'Available on weekdays',
  language: 'Portuguese, Spanish',
  user: user21
)
file21 = Rails.root.join("app/assets/images/perfil2.png")
profile21.photo.attach(io: File.open(file6), filename: "perfil2.png", content_type: "image/png")
profile21.save
puts "user 21 created"

puts "creating user 22"
user22 = User.create!(email: 'user4@france.com', password: 'password', password_confirmation: 'password')
profile22 = Profile.create!(
  name: 'Lucas Dupont',
  bio: 'I am Lucas, a lover of modern art and local cafes. I enjoy visiting museums and discovering new art exhibitions around Paris.',
  country: 'France',
  city: 'Paris',
  traveler: false,
  preferences: 'Art, Museums, Cafes',
  food: 'Croissant',
  animal: 'Cat',
  availability: 'Available on weekends',
  language: 'French, English',
  user: user22
)
file22 = Rails.root.join("app/assets/images/perfil3.png")
profile22.photo.attach(io: File.open(file7), filename: "perfil3.png", content_type: "image/png")
profile22.save
puts "user 22 created"

puts "creating user 23"
user23 = User.create!(email: 'user5@france.com', password: 'password', password_confirmation: 'password')
profile23 = Profile.create!(
  name: 'Marie Lefevre',
  bio: 'I am Marie, a passionate traveler who loves exploring Parisian markets and tasting local pastries. I enjoy finding unique places in the city.',
  country: 'France',
  city: 'Paris',
  traveler: false,
  preferences: 'Markets, Pastries, Photography',
  food: 'Macaron',
  animal: 'Bird',
  availability: 'Available on weekdays',
  language: 'French, English',
  user: user23
)
file23 = Rails.root.join("app/assets/images/perfil5.png")
profile23.photo.attach(io: File.open(file8), filename: "perfil5.png", content_type: "image/png")
profile23.save
puts "user 23 created"

puts "creating user 24"
user24 = User.create!(email: 'user6@france.com', password: 'password', password_confirmation: 'password')
profile24 = Profile.create!(
  name: 'Sophie Martin',
  bio: 'I am Sophie, a fan of Parisian life and fashion. I enjoy shopping in boutiques and walking through the elegant streets of Paris.',
  country: 'France',
  city: 'Paris',
  traveler: false,
  preferences: 'Fashion, Shopping, City Life',
  food: 'Quiche Lorraine',
  animal: 'Dog',
  availability: 'Available on weekends',
  language: 'French, Spanish',
  user: user24
)
file24 = Rails.root.join("app/assets/images/perfil4.png")
profile24.photo.attach(io: File.open(file9), filename: "perfil4.png", content_type: "image/png")
profile24.save
puts "user 24 created"

puts "All users and profiles created successfully!"
