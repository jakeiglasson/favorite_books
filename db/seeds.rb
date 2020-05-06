# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Removing old book entries"
Book.delete_all

20.times do
    b = Book.create(
        title: Faker::Book.title,
        author: Faker::Book.author,
        description: "something about the book",
        cover_picture: "picture to go here"
        
    )
    puts "#{b.title} created!"
end