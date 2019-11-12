# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# first festroy all the instances of all mdels
puts 'Clearing database'

Booking.destroy_all
Actor.destroy_all
User.destroy_all

puts 'Creating users'


oscar = User.create!(email: "oscar.hewitt.lindberg@gmail.com", password: "123456")

jules = User.create!(email: "bablouchka@gmail.com", password: "123456")

carla = User.create!(email: "learntoglow@gmail.com", password: "123456")
#add comments 'creating users'

puts 'Creating actors'

#20 times
# for 7 use each user
boyfriend = Actor.create!(name: "Andrew Mathis", sex: "Male", location: Faker::Address.city, bio: "I have experience being a boyfriend", category: "Boyfriend", price: 550, owner: oscar)
mother = Actor.create!(name: "Penelope  Manning", sex: "Female", location: Faker::Address.city, bio: "I have experience being a mom", category: "Mother", price: 340, owner: jules)
grandmother = Actor.create!(name: "Caroline Welch", sex: "Female", location: Faker::Address.city, bio: "I have experience being a grandma", category: "Grandmother", price: 340, owner: jules)
housekeeper = Actor.create!(name: "Madeleine  Lyman", sex: "Male", location: Faker::Address.city, bio: "I have experience being a cleaner", category: "Housekeeper", price: 100, owner: oscar)
girlfriend = Actor.create!(name: "Victoria  Duncan", sex: "Female", location: Faker::Address.city, bio: "I have experience being a girlfriend", category: "Girlfriend", price: 500, owner: jules)
sister = Actor.create!(name: "Megan Terry", sex: "Female", location: Faker::Address.city, bio: "I have experience being a sister", category: "Sister", price: 400, owner: jules)
brother = Actor.create!(name: "Richard  Wilkins", sex: "Male", location: Faker::Address.city, bio: "I have experience being a brother", category: "Brother", price: 150, owner: oscar)
friend = Actor.create!(name: "Eric  Welch", sex: "Male", location: Faker::Address.city, bio: "I have experience being a friend", category: "Friend", price: 50, owner: oscar)
Actor.create!(name: "Amy  Parr", sex: "Female", location: Faker::Address.city, bio: "I have experience being a mom", category: "Mother", price: 130, owner: carla)
Actor.create!(name: "Julia  Fraser", sex: "Female", location: Faker::Address.city, bio: "I have experience being a grandma", category: "Grandmother", price: 340, owner: carla)
Actor.create!(name: "Adrian Arnold", sex: "Male", location: Faker::Address.city, bio: "I have experience being a grandpa", category: "Grandfather", price: 110, owner: oscar)
Actor.create!(name: "Gabrielle  Wright", sex: "Female", location: Faker::Address.city, bio: "I have experience being a girlfriend", category: "Girlfriend", price: 90, owner: carla)
Actor.create!(name: "Donna  Young", sex: "Female", location: Faker::Address.city, bio: "I have experience being a sister", category: "Sister", price: 160, owner: carla)
Actor.create!(name: "Natalie  Paterson", sex: "Female", location: Faker::Address.city, bio: "I have experience being a chef", category: "Chef", price: 600, owner: jules)
Actor.create!(name: "Mary White", sex: "Female", location: Faker::Address.city, bio: "I have experience being a friend", category: "Friend", price: 10, owner: carla)
Actor.create!(name: "Andrea Vaughan", sex: "Female", location: Faker::Address.city, bio: "I have experience being a sister", category: "Sister", price: 20, owner: carla)




#comment 'creating actors'

# fake 10
# name = User
# 7 actors each
peter = User.create!(email: Faker::Internet.email, password: "123456")
anna = User.create!(email: Faker::Internet.email, password: "123456")
lars = User.create!(email: Faker::Internet.email, password: "123456")
robin = User.create!(email: Faker::Internet.email, password: "123456")
craig = User.create!(email: Faker::Internet.email, password: "123456")
amanda = User.create!(email: Faker::Internet.email, password: "123456")
nick = User.create!(email: Faker::Internet.email, password: "123456")
erika = User.create!(email: Faker::Internet.email, password: "123456")
charlie = User.create!(email: Faker::Internet.email, password: "123456")
kim = User.create!(email: Faker::Internet.email, password: "123456")
dick = User.create!(email: Faker::Internet.email, password: "123456")

puts 'Creating bookings'

Booking.create!(title: "Need a boyfriend", actor: boyfriend, renter:peter , date: Date.today + 5.days, duration: 2)
Booking.create!(title: "Need a mother", actor: mother, renter:lars , date: Date.today + 3.days, duration: 3)
Booking.create!(title: "Need a sister", actor: sister, renter:nick , date: Date.today + 8.days, duration: 6)
Booking.create!(title: "Need a housekeeper", actor: housekeeper, renter:amanda , date: Date.today + 9.days, duration: 7)
Booking.create!(title: "Need a girlfriend", actor: girlfriend, renter:dick , date: Date.today + 1.days, duration: 1)
Booking.create!(title: "Need a brother", actor: brother, renter:erika , date: Date.today + 3.days, duration: 2)
Booking.create!(title: "Need a friend", actor: friend, renter:kim , date: Date.today + 10.days, duration: 1)
Booking.create!(title: "Need a grandmother", actor: grandmother, renter:craig, date: Date.today + 11.days, duration: 7)
# Booking.Create(title: "Need boyfriend", actor: Actor.all.sample, renter:anna , date:, duration:)
# Booking.Create(title: "Need boyfriend", actor: Actor.all.sample, renter:lars , date:, duration:)
# Booking.Create(title: "Need boyfriend", actor: Actor.all.sample, renter:robin , date:, duration:)
# Booking.Create(title: "Need boyfriend", actor: Actor.all.sample, renter:amanda , date:, duration:)
# Booking.Create(title: "Need boyfriend", actor: Actor.all.sample, renter:kim, date:, duration:)

# create a few bookings
# for you, carla and jules' actors

puts 'Finishing up'
