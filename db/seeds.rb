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

10.times do
  Profile.create(
    name: Faker::Name.name,
    bio: "#{Faker::Name.first_name} é uma pessoa que ama viajar. Tem #{rand(18..65)} anos e adora explorar novas culturas e paisagens. Nas horas vagas, gosta de praticar esportes ao ar livre e sair com amigos para festas.",
    country: 'Brazil',
    city: 'Rio de Janeiro',
    traveler: Faker::Boolean.boolean,
    preferences: Faker::Lorem.words(number: 3).join(', '),
    food: Faker::Food.dish,
    animal: ["gato", "cachorro", "pássaro", "hamster"].sample,
    availability: ["disponível finais de semana", "disponível terças e quintas", "disponível todas as tardes"].sample,
    user_id: User.all.sample.id
  )
end

10.times do
  Profile.create(
    name: Faker::Name.name,
    bio: "#{Faker::Name.first_name} é um viajante nato e tem #{rand(18..65)} anos. Ama a natureza e sempre busca novos lugares para explorar. Nas horas livres, se dedica à leitura e relaxa em cafés.",
    country: 'Portugal',
    city: 'Lisboa',
    traveler: Faker::Boolean.boolean,
    preferences: Faker::Lorem.words(number: 3).join(', '),
    food: Faker::Food.dish,
    animal: ["gato", "cachorro", "coelho", "pássaro"].sample,
    availability: ["disponível finais de semana", "disponível só à noite", "disponível segundas e sextas"].sample,
    user_id: User.all.sample.id
  )
end

10.times do
  Profile.create(
    name: Faker::Name.name,
    bio: "#{Faker::Name.first_name} tem #{rand(18..65)} anos e ama se aventurar. Gosta de festas e de conhecer novas pessoas. Nas suas viagens, sempre procura lugares com muita agitação.",
    country: 'France',
    city: 'Paris',
    traveler: Faker::Boolean.boolean,
    preferences: Faker::Lorem.words(number: 3).join(', '),
    food: Faker::Food.dish,
    animal: ["gato", "cachorro", "peixe", "cavalo"].sample,
    availability: ["disponível finais de semana", "disponível terça e quinta-feira", "disponível todo dia de manhã"].sample,
    user_id: User.all.sample.id
  )
end

10.times do
  Profile.create(
    name: Faker::Name.name,
    bio: "#{Faker::Name.first_name} tem #{rand(18..65)} anos e é apaixonado por novas experiências. Quando viaja, gosta de passar tempo em praias e explorar a gastronomia local.",
    country: 'Spain',
    city: 'Barcelona',
    traveler: Faker::Boolean.boolean,
    preferences: Faker::Lorem.words(number: 3).join(', '),
    food: Faker::Food.dish,
    animal: ["gato", "cachorro", "coelho", "hamster"].sample,
    availability: ["disponível finais de semana", "disponível sábados", "disponível terças e quintas"].sample,
    user_id: User.all.sample.id
  )
end

10.times do
  Profile.create(
    name: Faker::Name.name,
    bio: "#{Faker::Name.first_name} tem #{rand(18..65)} anos e é um aventureiro. Quando viaja, adora explorar as montanhas e conhecer pessoas novas. Também é fã de arte e adora visitar museus.",
    country: 'Italy',
    city: 'Milão',
    traveler: Faker::Boolean.boolean,
    preferences: Faker::Lorem.words(number: 3).join(', '), 
    food: Faker::Food.dish,
    animal: ["gato", "cachorro", "pássaro", "coelho"].sample,
    availability: ["disponível finais de semana", "disponível às segundas", "disponível todas as tardes"].sample,
    user_id: User.all.sample.id
  )
end
