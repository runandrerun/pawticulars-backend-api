# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'runandre', password: '123', email: 'coolio@cool.com', location: 'Bronx, NY', avatar: 'img', display_name: 'dreday')
Dog.create(name: 'Panda', avatar: 'img', breed: 'Mastiff x Catahoula Cur', bio: 'Beast!', size: 'Large', temperament: 'Confident', energy: 'High', gender: 'Male', age: '1.8')
UserDog.create(user_id: 1, dog_id: 1)
