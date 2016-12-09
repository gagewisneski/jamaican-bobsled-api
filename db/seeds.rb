# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


100.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  position = Faker::Number.between(1,4)
  Jamaican.create(first_name: first_name, last_name: last_name, position: position)
end

