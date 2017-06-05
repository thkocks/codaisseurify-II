# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Genres
alternative = Genre.create!(name: "Alternative")
blues = Genre.create!(name: "Blues")
classical = Genre.create!(name: "Classical")
country = Genre.create!(name: "Country")
dance = Genre.create!(name: "Dance")
electronic = Genre.create!(name: "Electronic")
hiphop = Genre.create!(name: "Hip-Hop")
indiepop = Genre.create!(name: "Indie Pop")
jpop = Genre.create!(name: "J-Pop")
jazz = Genre.create!(name: "Jazz")
pop = Genre.create!(name: "pop")
rnbsoul = Genre.create!(name: "R&B / Soul")
reggae = Genre.create!(name: "Reggae")
rock = Genre.create!(name: "Rock")
world = Genre.create!(name: "World")

# Users
tim = User.create(email: "tim@musify.com", password: "abcd1234")
anna = User.create(email: "anna@musify.com", password: "abcd1234")
hendrik = User.create(email: "hendrik@musify.com", password: "abcd1234")
steve = User.create(email: "steve@musify.com", password: "abcd1234")
carla = User.create(email: "carla@musify.com", password: "abcd1234")
