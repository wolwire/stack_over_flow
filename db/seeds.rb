# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Faker::Config.locale= :ru
User.create!(name: "Example User",
             email: "agrawal.mayank1996@gmail.com",
             password: "123123",
             password_confirmation: "123123",
             admin: true,activated: true,
             activated_at: Time.zone.now)
99.times do |n|
  name = Faker::Name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end

users = User.order(:created_at).take(6)
10.times do
  content = Faker::Lorem.sentence(word_count: 50)
  ques = Faker::Lorem.questions(number: 1)
  users.each { |user| user.questions.create!(header: ques,content: content)}
end

questions = Question.order(:created_at).take(10)

10.times do
  content = Faker::Lorem.sentence(word_count: 50)
  questions.each { |ques| ques.answers.create!(content: content, user: ques.user)}
end