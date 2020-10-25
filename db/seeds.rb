# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Users
User.create!([
  {first_name: "Mendy", last_name: "Cohen", email: "mendy@gmail.com", username: "mendycohen", password_digest: "password"},
  {first_name: "Mendel", last_name: "Cohen", email: "mendel@gmail.com", username: "mendelcohen", password_digest: "password"},
  {first_name: "Menachem", last_name: "Cohen", email: "menachem@gmail.com", username: "menachemcohen", password_digest: "password"}
])


#Categories
Category.create!([
  {name: "Feelings"},
  {name: "Words"},
  {name: "Plans"}
])

  
#Goals
Goal.create!([
  {name: "Listen", user_id: 1, category_id: 1, description: "Listen to child talking", begin_date: Date.new(2020, 1, 1), end_date: Date.new(2020, 1, 14), image_url: "https://www.incimages.com/uploaded_files/image/1920x1080/getty_464672063_2000160020009280233_339359.jpg"},
  {name: "Say One Word", user_id: 2, category_id: 2, description: "Give instructions without lecturing", begin_date: Date.new(2020, 1, 15), end_date: Date.new(2020, 1, 31), image_url: "https://miro.medium.com/max/1000/1*ufW05Ut1mIcj_VleEI9UkQ.jpeg"},
  {name: "Organization", user_id: 3, category_id: 3, description: "Keep all systems organized", begin_date: Date.new(2020, 11, 7), end_date: Date.new(2020, 11, 30), image_url: "https://i0.wp.com/www.additudemag.com/wp-content/uploads/2012/01/GettyImages-1153879953.jpg?resize=1280%2C720px&ssl=1"}
])

  
#Steps
Step.create!([
  {date: Date.new(2020, 1, 1), goal_id: 1, comment: "I stayed quiet"},
  {date: Date.new(2020, 1, 15), goal_id: 2, comment: "Instructions were brief"},
  {date: Date.new(2019, 11, 7), goal_id: 3, comment: "Organized with too much perfection"}
])

 