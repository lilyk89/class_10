# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
store_names = [
	"Number 1 Best Store",
	"Triple A Store",
	"Greatest Store",
	"istore",
	"Buy Things From Me Inc",
	"Next Best Store",
	"Y Not Convenient Store",
	"Super Store",
	"Storeville",
	"High Quality Store"
]

store_descriptions = [
	"The greatest store in the world."
]

product_titles = [
	"slinky",
	"hamburger",
	"tylenol",
	"cinnamon bun",
	"chew toy",
	"silly putty",
	"kale chips",
	"yoga mat",
	"artisinal jam",
	"soylent"
]

product_descriptions = [
	"This product will change your life.",
	"Experts agree this product has wide-ranging health-benefits.",
	"You've never truly felt love until you have bought this product."
]
10.times do
Store.create(
	name: store_names.sample,
	description: store_descriptions.sample
	)
end

100.times do
Product.create(
	name: product_titles.sample,
	description: product_descriptions.sample,
	price: rand(1..100),
	store_id: rand(1..10)
	)
end