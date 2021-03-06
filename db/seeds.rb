# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create users
puts "Creating new test subjects"
user_one = User.create(name: 'test', username: 'test1', email: 'test1@book.com', password: 'password', admin: false)
user_two = User.create(name: 'test', username: 'test2', email: 'test2@book.com', password: 'password', admin: false)

# Create admin
puts "Creating super human admin!"
user_admin = User.create(name: 'Admin', username: 'Admin', email: 'admin@book.com', password: 'password', admin: true)

puts "Removing old book entries"
Book.delete_all

3.times do
    b = Book.create(
        title: Faker::Book.title,
        author: Faker::Book.author,
        description: "something about the book",
    )
    file = open("https://picsum.photos/200/300")
    b.cover_picture.attach(io: file, filename: "temp.#{file.content_type_parse.first.split("/").last}", content_type: file.content_type_parse.first)
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