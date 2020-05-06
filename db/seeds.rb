# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Removing old book entries"
Book.delete_all

user_one = User.create(email: 'test1@book.com', password: 'password')
user_two = User.create(email: 'test2@book.com', password: 'password')

20.times do
    b = Book.create(
        title: Faker::Book.title,
        author: Faker::Book.author,
        description: "something about the book",
        cover_picture: "picture to go here"

    )
    puts "#{b.title} created!"
end


# 12.times do
#     n = User.create(
#         name: Faker::FunnyName.two_word_name,
#         username: Faker::JapaneseMedia::DragonBall.character,
#         password: '123456',
#         email: Faker::Internet.email
#     )
# end