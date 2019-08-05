# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Gossip.destroy_all
User.destroy_all
5.times do
	User.create!(
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		email: Faker::Internet.email 
		)
end
10.times do
	Gossip.create!(
		title: Faker::Coffee.blend_name,
		content: Faker::Quote.most_interesting_man_in_the_world,
		date: Faker::Date.between(from: 60.days.ago, to: Date.today).strftime("Créé le %d/%m/%Y"),
		user: User.find(rand(User.first.id..User.last.id))
		)
end