# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Gossip.destroy_all
User.destroy_all
City.destroy_all
cities = ["Paris", "Rennes", "Nantes", "Rennes", "Tours", "Toulouse", "Montpellier", "Strasbourg", "Marseille", "Lille"]
n = 0

10.times do 
	City.create!(
		name: cities[n]
		)
	n += 1
end

City.create!(
	name: "I know yours already dude..."
	)

5.times do
	User.create!(
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		email: Faker::Internet.email, 
		description: Faker::Movies::Lebowski.quote,
		city: City.all.sample
		)
end

10.times do
	Gossip.create!(
		title: Faker::Hipster.word,
		content: Faker::Quote.most_interesting_man_in_the_world,
		date: Faker::Date.between(from: 60.days.ago, to: Date.today).strftime("Créé le %d/%m/%Y"),
		user: User.all.sample
		)
end

User.create!(
	first_name: "Ano",
	last_name: "Nymous",
	email: "ano.nymous@gmail.com", 
	description: " We are Anonymous. We are Legion. We do not forgive. We do not forget. Expect us.", 
	city: City.find_by(name: "I know yours already dude...")
	)