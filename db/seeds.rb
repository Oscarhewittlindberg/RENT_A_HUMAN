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
boyrfriend = Actor.create!(name: Faker::Name.name, location: Faker::Address.city, bio: "I have experience being a boyfriend", category: "Boyfriend", price: 550, owner: oscar)
Actor.create!(name: Faker::Name.name, location: Faker::Address.city, bio: "I have experience being a mom", category: "Mother", price: 340, owner: jules)
Actor.create!(name: Faker::Name.name, location: Faker::Address.city, bio: "I have experience being a grandma", category: "Grandmother", price: 340, owner: jules)
Actor.create!(name: Faker::Name.name, location: Faker::Address.city, bio: "I have experience being a cleaner", category: "Housekeeper", price: 100, owner: oscar)
Actor.create!(name: Faker::Name.name, location: Faker::Address.city, bio: "I have experience being a girlfriend", category: "Girlfriend", price: 500, owner: jules)
Actor.create!(name: Faker::Name.name, location: Faker::Address.city, bio: "I have experience being a sister", category: "Sister", price: 400, owner: jules)
Actor.create!(name: Faker::Name.name, location: Faker::Address.city, bio: "I have experience being a brother", category: "Brother", price: 150, owner: oscar)
Actor.create!(name: Faker::Name.name, location: Faker::Address.city, bio: "I have experience being a friend", category: "Friend", price: 50, owner: oscar)
Actor.create!(name: Faker::Name.name, location: Faker::Address.city, bio: "I have experience being a mom", category: "Mother", price: 130, owner: carla)
Actor.create!(name: Faker::Name.name, location: Faker::Address.city, bio: "I have experience being a grandma", category: "Grandmother", price: 340, owner: carla)
Actor.create!(name: Faker::Name.name, location: Faker::Address.city, bio: "I have experience being a grandpa", category: "Grandfather", price: 110, owner: oscar)
Actor.create!(name: Faker::Name.name, location: Faker::Address.city, bio: "I have experience being a girlfriend", category: "Girlfriend", price: 90, owner: carla)
Actor.create!(name: Faker::Name.name, location: Faker::Address.city, bio: "I have experience being a sister", category: "Sister", price: 160, owner: carla)
Actor.create!(name: Faker::Name.name, location: Faker::Address.city, bio: "I have experience being a chef", category: "Chef", price: 600, owner: jules)
Actor.create!(name: Faker::Name.name, location: Faker::Address.city, bio: "I have experience being a friend", category: "Friend", price: 10, owner: carla)
Actor.create!(name: Faker::Name.name, location: Faker::Address.city, bio: "I have experience being a sister", category: "Sister", price: 20, owner: carla)




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

Booking.create!(title: "Need boyfriend", actor: boyrfriend, renter:peter , date: Date.today + 5.days, duration: 2)
# Booking.Create(title: "Need boyfriend", actor: Actor.all.sample, renter:anna , date:, duration:)
# Booking.Create(title: "Need boyfriend", actor: Actor.all.sample, renter:lars , date:, duration:)
# Booking.Create(title: "Need boyfriend", actor: Actor.all.sample, renter:robin , date:, duration:)
# Booking.Create(title: "Need boyfriend", actor: Actor.all.sample, renter:amanda , date:, duration:)
# Booking.Create(title: "Need boyfriend", actor: Actor.all.sample, renter:kim, date:, duration:)

# create a few bookings
# for you, carla and jules' actors

puts 'Finishing up'
