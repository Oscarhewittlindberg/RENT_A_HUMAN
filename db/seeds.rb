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
#boyfriend
boyfriend = Actor.new(name: "Andrew Mathis", age: 27, sex: "Male", location: Faker::Address.city, bio: "I have experience being a boyfriend", category: "Boyfriend", price: 550, owner: oscar)
boyfriend.remote_image_url = "https://img.maximummedia.ie/joe_ie/eyJkYXRhIjoie1widXJsXCI6XCJodHRwOlxcXC9cXFwvbWVkaWEtam9lLm1heGltdW1tZWRpYS5pZS5zMy5hbWF6b25hd3MuY29tXFxcL3dwLWNvbnRlbnRcXFwvdXBsb2Fkc1xcXC8yMDE0XFxcLzAyXFxcLzE3MTgyOTIzXFxcL0pvc2VwaC1Hb3Jkb24tTGV2aXR0LTIuanBnXCIsXCJ3aWR0aFwiOjc0MCxcImhlaWdodFwiOjQxNixcImRlZmF1bHRcIjpcImh0dHBzOlxcXC9cXFwvd3d3LmpvZS5pZVxcXC9hc3NldHNcXFwvaW1hZ2VzXFxcL2pvZVxcXC9uby1pbWFnZS5wbmc_aWQ9MjY0YTJkYmUzNzBmMmM2NzVmY2RcIixcIm9wdGlvbnNcIjpbXX0iLCJoYXNoIjoiM2IyMjc2NGIwNjEzOGViOTA3NDU4ZDI3MzRmMjgxNjJkZGM2NDI2NSJ9/joseph-gordon-levitt-2.jpg"
boyfriend.save
#mother
mother = Actor.new(name: "Penelope  Manning", age: 55 , sex: "Female", location: Faker::Address.city, bio: "I have experience being a mom", category: "Mother", price: 340, owner: jules)
mother.remote_image_url = "https://pbs.twimg.com/profile_images/1145812709960667136/YF4VoP3e_400x400.jpg"
mother.save
#grandmother
grandmother = Actor.new(name: "Caroline Welch", age: 75, sex: "Female", location: Faker::Address.city, bio: "I have experience being a grandma", category: "Grandmother", price: 340, owner: jules)
grandmother.remote_image_url = "https://images-production.freetls.fastly.net/uploads/posts/image/145420/not-interested-in-being-grandmother.jpg?auto=compress&crop=faces%2Ctop&fit=crop&h=562&q=55&w=750"
grandmother.save
#housekeeper
housekeeper = Actor.new(name: "Madeleine  Lyman", age: 29 , sex: "Male", location: Faker::Address.city, bio: "I have experience being a cleaner", category: "Housekeeper", price: 100, owner: oscar)
housekeeper.remote_image_url = "https://img.thrfun.com/img/141/760/window_l1.jpg"
housekeeper.save
#girlfriend
girlfriend = Actor.new(name: "Victoria  Duncan", age: 30, sex: "Female", location: Faker::Address.city, bio: "I have experience being a girlfriend", category: "Girlfriend", price: 500, owner: jules)
girlfriend.remote_image_url = "https://files.lifehacks.io/wp-content/uploads/Cute-Things-To-Say-To-Your-Girlfriend-17-e1547189951868-1095x800.jpg"
girlfriend.save
#sister
sister = Actor.new(name: "Megan Terry", age: 23, sex: "Female", location: Faker::Address.city, bio: "I have experience being a sister", category: "Sister", price: 400, owner: jules)
sister.remote_image_url = "https://image.freepik.com/free-photo/beautiful-young-woman-standing-park-after-work-out_33839-3560.jpg"
sister.save
#brother
brother = Actor.new(name: "Richard  Wilkins", age: 28, sex: "Male", location: Faker::Address.city, bio: "I have experience being a brother", category: "Brother", price: 150, owner: oscar)
brother.remote_image_url = "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fthumbs.dreamstime.com%2Fb%2Fyoung-man-playing-guitar-beach-beautiful-guy-smiling-his-47704707.jpg&f=1&nofb=1"
brother.save
#friend
friend = Actor.new(name: "Eric  Welch", age: 21, sex: "Male", location: Faker::Address.city, bio: "I have experience being a friend", category: "Friend", price: 50, owner: oscar)
friend.remote_image_url = "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.selfstoragefinders.com%2Fblog%2Fwp-content%2Fuploads%2F2013%2F11%2Fhipstercoffee.jpg&f=1&nofb=1"
friend.save
#others
Actor.create!(name: "Amy  Parr", age: 57, sex: "Female", location: Faker::Address.city, bio: "I have experience being a mom", category: "Mother", price: 130, owner: carla)
Actor.create!(name: "Julia  Fraser", age: 43, sex: "Female", location: Faker::Address.city, bio: "I have experience being a grandma", category: "Grandmother", price: 340, owner: carla)
Actor.create!(name: "Adrian Arnold", age: 80, sex: "Male", location: Faker::Address.city, bio: "I have experience being a grandpa", category: "Grandfather", price: 110, owner: oscar)
Actor.create!(name: "Gabrielle  Wright", age: 29, sex: "Female", location: Faker::Address.city, bio: "I have experience being a girlfriend", category: "Girlfriend", price: 90, owner: carla)
Actor.create!(name: "Donna  Young", age: 18, sex: "Female", location: Faker::Address.city, bio: "I have experience being a sister", category: "Sister", price: 160, owner: carla)
Actor.create!(name: "Natalie  Paterson", age: 43, sex: "Female", location: Faker::Address.city, bio: "I have experience being a chef", category: "Chef", price: 600, owner: jules)
Actor.create!(name: "Mary White", age: 40, sex: "Female", location: Faker::Address.city, bio: "I have experience being a friend", category: "Friend", price: 10, owner: carla)
Actor.create!(name: "Andrea Vaughan", age: 32, sex: "Female", location: Faker::Address.city, bio: "I have experience being a sister", category: "Sister", price: 20, owner: carla)




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

Booking.create!(title: "Need a boyfriend", location: Faker::Address.city, actor: boyfriend, renter:peter , date: Date.today + 5.days, duration: 2, price: 550 , description: "Need a boyfriend for family dinner, should include kisses")
Booking.create!(title: "Need a mother", location: Faker::Address.city, actor: mother, renter:lars , date: Date.today + 3.days, duration: 3, price: 340 , description: "Feeling sick and could use a mother to take care of me")
Booking.create!(title: "Need a sister", location: Faker::Address.city, actor: sister, renter:nick , date: Date.today + 8.days, duration: 6, price:  400, description: "Wanna feel what is it like to have sister for once")
Booking.create!(title: "Need a housekeeper", location: Faker::Address.city, actor: housekeeper, renter:amanda , date: Date.today + 9.days, duration: 7, price: 100, description: "Going to fool my friends that I have housekeeper")
Booking.create!(title: "Need a girlfriend", location: Faker::Address.city, actor: girlfriend, renter:dick , date: Date.today + 1.days, duration: 1, price:  500, description: "Going to a christmans party and need a girlfriend to no feel lonely")
Booking.create!(title: "Need a brother", location: Faker::Address.city, actor: brother, renter:erika , date: Date.today + 3.days, duration: 2, price:  150, description: "Need someone to act as my brother")
Booking.create!(title: "Need a friend", location: Faker::Address.city, actor: friend, renter:kim , date: Date.today + 10.days, duration: 1, price:  50, description: "Need a friend for my birthdayparty")
Booking.create!(title: "Need a grandmother", location: Faker::Address.city, actor: grandmother, renter:craig, date: Date.today + 11.days, duration: 7, price:  340, description: "Need someone who can make great cookies")
# Booking.Create(title: "Need boyfriend", actor: Actor.all.sample, renter:anna , date:, duration:)
# Booking.Create(title: "Need boyfriend", actor: Actor.all.sample, renter:lars , date:, duration:)
# Booking.Create(title: "Need boyfriend", actor: Actor.all.sample, renter:robin , date:, duration:)
# Booking.Create(title: "Need boyfriend", actor: Actor.all.sample, renter:amanda , date:, duration:)
# Booking.Create(title: "Need boyfriend", actor: Actor.all.sample, renter:kim, date:, duration:)

# create a few bookings
# for you, carla and jules' actors

puts 'Finishing up'
