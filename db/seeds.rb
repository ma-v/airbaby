puts "Seeding Users"
user1= User.new(username: "Mica", email: "mica@gmail.com", password:"airbaby", pedophile: false, password_confirmation: "airbaby", description: "Jeune papa d'une petite fille super sympa à la recherche de nouvelles rencontres", address:"Avenue de la canebière, Marseille")
user1.remote_photo_url = "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"
user1.save
user2 = User.new(username: "Mav", email: "mav@gmail.com", password:"airbaby", pedophile: false, password_confirmation: "airbaby", description: "Jeune homme amoureux des petits bébés trop mimi", address:"Boulevard Chave, Marseille")
user2.remote_photo_url = "https://images.pexels.com/photos/2770600/pexels-photo-2770600.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
user2.save
user3 = User.new(username: "Kimberley", email: "kimberley@gmail.com", password:"airbaby", pedophile: false, password_confirmation: "airbaby", description: "Jeune demoiselle recherche un mec mortel.... pour louer son bébé", address:"90 boulevard rabatau, Marseille")
user3.remote_photo_url = "https://i.pinimg.com/originals/01/14/12/011412f6278d82a52c548929c96775e7.jpg"
user3.save
user4 = User.new(username: "Emile", email: "emile@gmail.com", password:"airbaby", pedophile: false, password_confirmation: "airbaby", description: "Homme sérieux à la recherche d'une vraie rencontre avec l'un de vos bébés", address:"3 boulevard michelet, Marseille")
user4.remote_photo_url = "https://i.pinimg.com/originals/40/26/c0/4026c0949d271e6a0d61aa80f9c6ed58.jpg"
user4.save
user5 = User.new(username: "Jacky", email: "jacky@gmail.com", password:"airbaby", pedophile: false, password_confirmation: "airbaby", description: "Recherche bébé fan de tuning et de mulets", address:"128 rue sainte, Marseille")
user5.remote_photo_url = "https://images.pexels.com/photos/2770600/pexels-photo-2770600.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
user5.save
user6 = User.new(username: "Jean-Edouard", email: "jean-edouard@gmail.com", password:"airbaby", pedophile: false, password_confirmation: "airbaby", description: "Je suis passionné de baby-fitness, se muscler uniquement avec des bébés", address:"9 quai du lazaret, Marseille")
user6.remote_photo_url = "https://i.pinimg.com/originals/24/48/d1/2448d1c98e7811280d8954a8285cd488.jpg"
user6.save
user7 = User.new(username: "Ruby", email: "ruby@gmail.com", password:"airbaby", pedophile: false, password_confirmation: "airbaby", description: "Auto-entrepreneuse, créatrice de baby-rent, plateforme de loc de bébés via AirBaby", address:"Rue fort du sanctuaire, Marseille")
user7.remote_photo_url = "https://inspiredot.net/wp-content/uploads/2018/10/Top-30-Most-Beautiful-Women-in-the-World-20-800x533.jpg"
user7.save
puts "Seeding done congrats, #{User.count} users created !"

puts "Seeding babies"
Baby.destroy_all
baby1 = Baby.new(first_name: "Franck", title: "Dumb baby", age: "2", gender: "other?", description: "Franck is dumb but we like him", price_per_day: 12, clean: false, sleepy: true, excited: false, crying: true, fat: true, playful: true, funny: true, public: true, animals: false, speaks: true)
baby1.user = user1
baby1.remote_photo_url = "https://images.medicaldaily.com/sites/medicaldaily.com/files/styles/headline/public/2014/09/09/crying-babies-need-be-handled-mentally-healthy-mom.jpg"
baby2 = Baby.new(first_name: "Joachim", title: "Cute baby", age: "3", gender: "girl", description: "Jojo is cool", price_per_day: 32, clean: false, sleepy: true, excited: false, crying: true, fat: false, playful: true, funny: true, public: true, animals: false, speaks: true)
baby2.user = user3
baby2.remote_photo_url = "https://besthairlooks.com/wp-content/uploads/2019/06/fauxhawk-baby-boy.jpg"
baby3 = Baby.new(first_name: "Jerem", title: "GetsChomp baby", age: "1", gender: "boy", description: "Jerem Bo$$", price_per_day: 25, clean: false, sleepy: true, excited: false, crying: true, fat: false, playful: true, funny: true, public: true, animals: false, speaks: true)
baby3.user = user1
baby3.remote_photo_url = "https://images-na.ssl-images-amazon.com/images/I/41dw2kqRnZL._SX425_.jpg"
baby4 = Baby.new(first_name: "Ronald", title: "Ginger baby", age: "2", gender: "boy", description: "A baby with no soul", price_per_day: 32, clean: false, sleepy: true, excited: false, crying: true, fat: false, playful: true, funny: true, public: true, animals: false, speaks: true)
baby4.user = user5
baby4.remote_photo_url = "https://meanwhileinireland.com/wp-content/uploads/2016/01/ugly-baby.jpg"
baby5 = Baby.new(first_name: "Chloé", title: "Fitness baby", age: "1", gender: "girl", description: "cutie girl who does 20 push-up every day", price_per_day: 19, clean: true, sleepy: false, excited: true, crying: true, fat: false, playful: true, funny: true, public: true, animals: false, speaks: true)
baby5.user = user2
baby5.remote_photo_url = "https://t4.ftcdn.net/jpg/00/86/50/91/240_F_86509102_4Uq70BNn0Ehb0XtLs4fy6XZahS9jQAPK.jpg"
baby6 = Baby.new(first_name: "Lola", title: "Princess baby", age: "0", gender: "girl", description: "Meet this little princess, so cute", price_per_day: 38, clean: false, sleepy: true, excited: false, crying: true, fat: false, playful: true, funny: true, public: true, animals: false, speaks: true)
baby6.user = user5
baby6.remote_photo_url = "https://ae01.alicdn.com/kf/HTB1lRUeSXXXXXXyXFXXq6xXFXXXP/2-Pcs-Belle-Bande-Dessin-e-B-b-Chapeaux-Ensembles-Impression-Coton-Triangle-B-b-Gar.jpg_640x640.jpg"
baby7 = Baby.new(first_name: "Diams", title: "Cool baby", age: "1", gender: "girl", description: "She's cool and she knows it", price_per_day: 31, clean: true, sleepy: true, excited: false, crying: false, fat: false, playful: true, funny: true, public: true, animals: true, speaks: true)
baby7.user = user2
baby7.remote_photo_url = "https://images-na.ssl-images-amazon.com/images/I/81X4TID9IML._SX425_.jpg"
baby8 = Baby.new(first_name: "Leo", title: "Hat baby", age: "3", gender: "boy", description: "A baby wearing a hat, what else?", price_per_day: 36, clean: false, sleepy: true, excited: false, crying: true, fat: false, playful: true, funny: false, public: false, animals: false, speaks: true)
baby8.user = user7
baby8.remote_photo_url = "https://i.pinimg.com/originals/20/de/1c/20de1cbba6ef8cb6e37b2bf2c7d93f68.jpg"

baby1.save
baby2.save
baby3.save
baby4.save
baby5.save
baby6.save
baby7.save
baby8.save
puts "Seeding done congrats, #{Baby.count} babies created !"
