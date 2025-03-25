Message.destroy_all
Match.destroy_all
Profile.destroy_all
User.destroy_all


puts "creating user 1"
user1 = User.create!(email: 'user1@brazil.com', password: 'password', password_confirmation: 'password')
profile1 = Profile.create!(
  name: 'Carlos Silva',
  bio: 'I am a lover of outdoor sports and adventures. I enjoy exploring new cultures and practicing sports with friends.',
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
file1 = URI.parse("https://res.cloudinary.com/dslrqpyd7/image/upload/t_perfil4/v1742153560/charlesdeluvio-K4mSJ7kc0As-unsplash_dtr15b_ctqkej.png").open
profile1.photo.attach(io: file1, filename: "perfil1.png", content_type: "image/png")
profile1.save
puts "user 1 created"

puts "creating user 2"
user2 = User.create!(email: 'user2@brazil.com', password: 'password', password_confirmation: 'password')
profile2 = Profile.create!(
  name: 'Ana Oliveira',
  bio: 'I am a nature and travel enthusiast. I love hiking and outdoor photography.',
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
file2 = URI.parse("https://res.cloudinary.com/dslrqpyd7/image/upload/v1742823309/side-view-woman-wearing-vacation-outfit-1_n0nlfw.jpg").open
profile2.photo.attach(io: file2, filename: "perfil2.jpg", content_type: "image/jpg")
profile2.save
puts "user 2 created"

puts "creating user 3"
user3 = User.create!(email: 'user3@brazil.com', password: 'password', password_confirmation: 'password')
profile3 = Profile.create!(
  name: 'Roberto Souza',
  bio: 'I am a lover of music and cultural events. I enjoy exploring the city and discovering new bands.',
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
file3 = URI.parse("https://res.cloudinary.com/dslrqpyd7/image/upload/v1742823309/smiling-handsome-man-looking-camera-beach-2_sgqq3q.jpg").open
profile3.photo.attach(io: file3, filename: "perfil3.jpg", content_type: "image/jpg")
profile3.save
puts "user 3 created"

puts "creating user 4"
user4 = User.create!(email: 'user1@portugal.com', password: 'password', password_confirmation: 'password')
profile4 = Profile.create!(
  name: 'João Costa',
  bio: 'I am a lover of travel and nature. I enjoy relaxing in cafés and exploring new tourist destinations.',
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
file4 = URI.parse("https://res.cloudinary.com/dslrqpyd7/image/upload/v1742823309/closeup-shot-laughing-male-model-outside-sun-rays-1_gheacz.jpg").open
profile4.photo.attach(io: file4, filename: "perfil4.jpg", content_type: "image/jpg")
profile4.save
puts "user 4 created"

puts "creating user 5"
user5 = User.create!(email: 'user2@portugal.com', password: 'password', password_confirmation: 'password')
profile5 = Profile.create!(
  name: 'Sofia Almeida',
  bio: 'I am passionate about art and history. I enjoy cultural tours and exploring museums in Lisbon.',
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
file5 = URI.parse("https://res.cloudinary.com/dslrqpyd7/image/upload/v1742823309/smiling-young-woman-with-sunglasses-street-city-1_icjhsw.jpg").open
profile5.photo.attach(io: file5, filename: "perfil5.jpg", content_type: "image/jpg")
profile5.save
puts "user 5 created"

puts "creating user 6"
user6 = User.create!(email: 'user3@portugal.com', password: 'password', password_confirmation: 'password')
profile6 = Profile.create!(
  name: 'Miguel Pereira',
  bio: 'I am a gastronomy and travel enthusiast. I enjoy exploring markets and trying new dishes.',
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
file6 = URI.parse("https://res.cloudinary.com/dslrqpyd7/image/upload/v1742824763/young-man-traveling-around-world-2_ir1tag.jpg").open
profile6.photo.attach(io: file6, filename: "perfil1.jpg", content_type: "image/jpg")
profile6.save
puts "user 6 created"

puts "creating user 7"
user7 = User.create!(email: 'user1@france.com', password: 'password', password_confirmation: 'password')
profile7 = Profile.create!(
  name: 'Pierre Dubois',
  bio: 'I am  an adventurer who loves parties and meeting new people. Always looking for places with good vibes and energy.',
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
file7 = URI.parse("https://res.cloudinary.com/dslrqpyd7/image/upload/v1742823309/happy-man-terrace-1_h682cd.jpg").open
profile7.photo.attach(io: file7, filename: "perfil5.jpg", content_type: "image/jpg")
profile7.save
puts "user 7 created"

puts "creating user 8"
user8 = User.create!(email: 'user2@france.com', password: 'password', password_confirmation: 'password')
profile8 = Profile.create!(
  name: 'Claire Martin',
  bio: 'I am a lover of fashion and art. I enjoy strolling around the city and exploring local boutiques.',
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
file8 = URI.parse("https://res.cloudinary.com/dslrqpyd7/image/upload/v1742823309/woman-traveling-paris-1_lrjh0u.jpg").open
profile8.photo.attach(io: file8, filename: "perfil2.jpg", content_type: "image/jpg")
profile8.save
puts "user 8 created"

puts "creating user 9"
user9 = User.create!(email: 'user3@france.com', password: 'password', password_confirmation: 'password')
profile9 = Profile.create!(
  name: 'Julien Lefevre',
  bio: 'I am passionate about history and architecture. I enjoy exploring museums and historical monuments in Paris.',
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
file9 = URI.parse("https://res.cloudinary.com/dslrqpyd7/image/upload/v1742823310/young-man-walking-street-city-1_nhkhdw.jpg").open
profile9.photo.attach(io: file9, filename: "perfil3.jpg", content_type: "image/jpg")
profile9.save
puts "user 9 created"

puts "creating user 10"
user10 = User.create!(email: 'user1@spain.com', password: 'password', password_confirmation: 'password')
profile10 = Profile.create!(
  name: 'Maria García',
  bio: 'I am passionate about new experiences, especially at the beach and exploring local gastronomy. Always looking for the best of every place.',
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
file10 = URI.parse("https://res.cloudinary.com/dslrqpyd7/image/upload/t_perfil4/v1742153528/vince-veras-AJIqZDAUD7A-unsplash_gk5upv_gcwqsz.png").open
profile10.photo.attach(io: file10, filename: "perfil2.png", content_type: "image/png")
profile10.save
puts "user 10 created"

puts "creating user 11"
user11 = User.create!(email: 'user2@spain.com', password: 'password', password_confirmation: 'password')
profile11 = Profile.create!(
  name: 'Carlos Martínez',
  bio: 'I am a lover of extreme sports and outdoor life. I love surfing and exploring new beaches in Barcelona.',
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
file11 = URI.parse("https://res.cloudinary.com/dslrqpyd7/image/upload/v1742823310/medium-shot-man-holding-skateboard-1_ujmfuv.jpg").open
profile11.photo.attach(io: file11, filename: "perfil1.jpg", content_type: "image/jpg")
profile11.save
puts "user 11 created"

puts "creating user 12"
user12 = User.create!(email: 'user3@spain.com', password: 'password', password_confirmation: 'password')
profile12 = Profile.create!(
  name: 'Lucía Fernández',
  bio: 'I am passionate about nightlife and music. I enjoy parties, bars, and discovering new places in Barcelona.',
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
file12 = URI.parse("https://res.cloudinary.com/dslrqpyd7/image/upload/v1742825017/marcin-jozwiak-FqwTkk_TO80-unsplash-1_huubwr.jpg").open
profile12.photo.attach(io: file12, filename: "perfil5.jpg", content_type: "image/jpg")
profile12.save
puts "user 12 created"

puts "creating user 13"
user13 = User.create!(email: 'user1@italy.com', password: 'password', password_confirmation: 'password')
profile13 = Profile.create!(
  name: 'Giulia Rossi',
  bio: 'I am an adventurer who loves exploring mountains and meeting new people. Passionate about art and museums.',
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
file13 = URI.parse("https://res.cloudinary.com/dslrqpyd7/image/upload/v1742826454/yorgos-ntrahas-HQPE4SweHRY-unsplash-1_czlgdh.jpg").open
profile13.photo.attach(io: file13, filename: "perfil5.jpg", content_type: "image/jpg")
profile13.save
puts "user 13 created"

puts "creating user 14"
user14 = User.create!(email: 'user2@italy.com', password: 'password', password_confirmation: 'password')
profile14 = Profile.create!(
  name: 'Luca Bianchi',
  bio: 'I am a lover of design and architecture. I enjoy strolling around Milan and exploring design shops.',
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
file14 = URI.parse("https://res.cloudinary.com/dslrqpyd7/image/upload/v1742826436/evan-wise-jpM_QMIhCOw-unsplash-1_wylkut.jpg").open
profile14.photo.attach(io: file14, filename: "perfil4.jpg", content_type: "image/jpg")
profile14.save
puts "user 14 created"

puts "creating user 15"
user15 = User.create!(email: 'user3@italy.com', password: 'password', password_confirmation: 'password')
profile15 = Profile.create!(
  name: 'Federica Caruso',
  bio: 'I am a fan of fashion and gastronomy. I enjoy visiting markets and restaurants in Milan.',
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
file15 = URI.parse("https://res.cloudinary.com/dslrqpyd7/image/upload/v1742826436/evan-clay-uV6wRoG_ZdU-unsplash-1_bn3oob.jpg").open
profile15.photo.attach(io: file15, filename: "perfil5.jpg", content_type: "image/jpg")
profile15.save
puts "user 15 created"


puts "creating user 16"
user16 = User.create!(email: 'user4@brazil.com', password: 'password', password_confirmation: 'password')
profile16 = Profile.create!(
  name: 'Luiz Pereira',
  bio: 'I am a nature lover and beach enthusiast. I enjoy spending my weekends hiking and visiting local parks.',
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
file16 = URI.parse("https://res.cloudinary.com/dslrqpyd7/image/upload/v1742826437/lucas-leonel-suarez-mOnOex3LldM-unsplash-1_epspbm.jpg").open
profile16.photo.attach(io: file16, filename: "perfil5.jpg", content_type: "image/jpg")
profile16.save
puts "user 16 created"

puts "creating user 17"
user17 = User.create!(email: 'user5@brazil.com', password: 'password', password_confirmation: 'password')
profile17 = Profile.create!(
  name: 'Mariana Costa',
  bio: 'I am a food lover with a passion for trying new dishes. I love exploring the local food scene and discovering hidden gems in the city.',
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
file17 = URI.parse("https://res.cloudinary.com/dslrqpyd7/image/upload/v1742826436/lukas-hellebrand-E8ohu6S3uis-unsplash-_sqqwch.jpg").open
profile17.photo.attach(io: file17, filename: "perfil4.jpg", content_type: "image/jpg")
profile17.save
puts "user 17 created"

puts "creating user 18"
user18 = User.create!(email: 'user6@brazil.com', password: 'password', password_confirmation: 'password')
profile18 = Profile.create!(
  name: 'Gabriel Almeida',
  bio: 'I am an architect with a love for urban exploration. I enjoy discovering the city’s hidden architectural wonders and parks.',
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
file18 = URI.parse("https://res.cloudinary.com/dslrqpyd7/image/upload/v1742826453/mikhail-tyrsyna-AxTviif6y9Q-unsplash-1_nghk4q.jpg").open
profile18.photo.attach(io: file18, filename: "perfil1.jpg", content_type: "image/jpg")
profile18.save
puts "user 18 created"

puts "creating user 19"
user19 = User.create!(email: 'user4@portugal.com', password: 'password', password_confirmation: 'password')
profile19 = Profile.create!(
  name: 'Pedro Silva',
  bio: 'I am an avid reader and lover of Lisbon’s cafes. I enjoy relaxing with a good book and discovering new places in the city.',
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
file19 = URI.parse("https://res.cloudinary.com/dslrqpyd7/image/upload/v1742826435/bethany-beck-3Ls96Qlfc-4-unsplash-1_fjc09d.jpg").open
profile19.photo.attach(io: file19, filename: "perfil4.jpg", content_type: "image/jpg")
profile19.save
puts "user 19 created"

puts "creating user 20"
user20 = User.create!(email: 'user5@portugal.com', password: 'password', password_confirmation: 'password')
profile20 = Profile.create!(
  name: 'Antônio Costa',
  bio: 'I am a passionate photographer who loves capturing Lisbon’s beauty through my lens. I enjoy outdoor activities and good food.',
  country: 'Portugal',
  city: 'Lisbon',
  traveler: true,
  preferences: 'Photography, Outdoor Activities, Food',
  food: 'Sardinhas',
  animal: 'Dog',
  availability: 'Available on weekends',
  language: 'Portuguese, English',
  user: user20
)
file20 = URI.parse("https://res.cloudinary.com/dslrqpyd7/image/upload/v1742826786/nenad-protic-LMudNyqjqJU-unsplash-1_eysmuw.jpg").open
profile20.photo.attach(io: file20, filename: "perfil5.jpg", content_type: "image/jpg")
profile20.save
puts "user 20 created"

puts "creating user 21"
user21 = User.create!(email: 'user6@portugal.com', password: 'password', password_confirmation: 'password')
profile21 = Profile.create!(
  name: 'Ana Martins',
  bio: 'I am a passionate traveler who loves exploring Lisbon’s streets and museums. I also enjoy cooking traditional Portuguese dishes.',
  country: 'Portugal',
  city: 'Lisbon',
  traveler: true,
  preferences: 'Traveling, Cooking, Museums',
  food: 'Bacalhau à Brás',
  animal: 'Cat',
  availability: 'Available on weekdays',
  language: 'Portuguese, Spanish, English',
  user: user21
)
file21 = URI.parse("https://res.cloudinary.com/dslrqpyd7/image/upload/v1742826435/bethany-beck-3Ls96Qlfc-4-unsplash-1_fjc09d.jpg").open
profile21.photo.attach(io: file21, filename: "perfil6.jpg", content_type: "image/jpg")
profile21.save
puts "user 21 created"

puts "creating user 22"
user22 = User.create!(email: 'user7@brazil.com', password: 'password', password_confirmation: 'password')
profile22 = Profile.create!(
  name: 'João Oliveira',
  bio: 'I am a local guide in Rio de Janeiro. I enjoy taking tourists around the city, showing them the best spots to visit and hidden gems.',
  country: 'Brazil',
  city: 'Rio de Janeiro',
  traveler: false,
  preferences: 'Guided Tours, History, Photography',
  food: 'Feijoada',
  animal: 'Parrot',
  availability: 'Available on weekends',
  language: 'Portuguese, English',
  user: user22
)
file22 = URI.parse("https://res.cloudinary.com/dslrqpyd7/image/upload/v1742827265/lala-azizli-Vy8qEGOJ2GI-unsplash-_kkaglq.jpg").open
profile22.photo.attach(io: file22, filename: "perfil7.jpg", content_type: "image/jpg")
profile22.save
puts "user 22 created"

puts "creating user 23"
user23 = User.create!(email: 'user8@brazil.com', password: 'password', password_confirmation: 'password')
profile23 = Profile.create!(
  name: 'Mariana Souza',
  bio: 'I am an artist and nature lover. I spend my days exploring Rio’s parks and painting landscapes inspired by the city’s beauty.',
  country: 'Brazil',
  city: 'Rio de Janeiro',
  traveler: true,
  preferences: 'Art, Nature, Outdoor Activities',
  food: 'Pão de Queijo',
  animal: 'Monkey',
  availability: 'Available on weekdays',
  language: 'Portuguese, English',
  user: user23
)
file23 = URI.parse("https://res.cloudinary.com/dslrqpyd7/image/upload/v1742825017/marcin-jozwiak-FqwTkk_TO80-unsplash-1_huubwr.jpg").open
profile23.photo.attach(io: file23, filename: "perfil8.jpg", content_type: "image/jpg")
profile23.save
puts "user 23 created"

puts "creating user 24"
user24 = User.create!(email: 'user9@france.com', password: 'password', password_confirmation: 'password')
profile24 = Profile.create!(
  name: 'Élise Durand',
  bio: 'I am a history enthusiast and a proud Parisian. I love exploring museums, visiting old bookstores, and enjoying a café with a good book.',
  country: 'France',
  city: 'Paris',
  traveler: false,
  preferences: 'History, Books, Cafés',
  food: 'Croissant',
  animal: 'Cat',
  availability: 'Available on weekends',
  language: 'French, English',
  user: user24
)
file24 = URI.parse("https://res.cloudinary.com/dslrqpyd7/image/upload/v1742826448/michele-bergami-z8lKZwlHvdM-unsplash-_bbftnw.jpg").open
profile24.photo.attach(io: file24, filename: "perfil9.jpg", content_type: "image/jpg")
profile24.save
puts "user 24 created"

puts "All users and profiles created successfully!"
