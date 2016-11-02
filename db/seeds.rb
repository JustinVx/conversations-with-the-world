# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Message.create(author_name: 'John', body: 'This is a message!')
Message.create(author_name: 'Bert', body: 'Or is it not?')
Message.create(author_name: 'John', body: 'How are you?')
