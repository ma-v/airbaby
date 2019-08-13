# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Seeding Users"
User.destroy_all
user1= User.new(username: "Micha", email: "michael.brunel@gmail.com", password:"airbaby", pedophile: false, password_confirmation: "airbaby", description: "Jeune papa d'une petite fille super sympa à la recherche de nouvelles rencontres")
user1.remote_photo_url = "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"
user1.save
user2 = User.new(username: "Mav", email: "mavrickmunoz@gmail.com", password:"airbaby", pedophile: false, password_confirmation: "airbaby", description: "Jeune homme amoureux des petits bébés trop mimi")
user2.remote_photo_url = "https://images.pexels.com/photos/2770600/pexels-photo-2770600.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
user2.save
puts "Seeding done congrats, #{User.count} users created !"

puts "Seeding babies"
Baby.destroy_all
baby1 = Baby.new(first_name: "Franck", title: "Dumb baby", age: "2", gender: "M", description: "Franck is dumb but we like him", price_per_day: 12, clean: false, sleepy: true, excited: false, crying: true, fat: false, playful: true, funny: true, public: true, animals: false, speaks: true)
baby1.user = User.first
baby2 = Baby.new(first_name: "Joachim", title: "Cute baby", age: "3", gender: "F", description: "Jojo is cool", price_per_day: 32, clean: false, sleepy: true, excited: false, crying: true, fat: false, playful: true, funny: true, public: true, animals: false, speaks: true)
baby2.user = User.first
baby3 = Baby.new(first_name: "Jerem", title: "Ugly baby", age: "1", gender: "M", description: "Jerem Bo$$", price_per_day: 25, clean: false, sleepy: true, excited: false, crying: true, fat: false, playful: true, funny: true, public: true, animals: false, speaks: true)
baby3.user = User.last
baby1.save 
baby2.save
baby3.save
puts "Seeding done congrats, #{Baby.count} babies created !"

