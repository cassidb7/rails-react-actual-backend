# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

hats = Category.create!(title: "Hats", image_url: 'https://i.ibb.co/cvpntL1/hats.png')
hats.products.create!(title: 'Yankee Round Top', description: 'Round top yankee hat as work by people', price: '31.00')
hats.products.create!(title: 'Yankee Square Top', description: 'Square top yankee hat as work by people', price: '31.00')
hats.products.create!(title: 'Yankee Rectangular Top', description: 'Rectangular top yankee hat as work by people', price: '31.00')
hats.products.create!(title: 'Yankee Hex Top', description: 'Hex top yankee hat as work by people', price: '31.00')
hats.products.create!(title: 'Yankee Bow Top', description: 'Bow top yankee hat as work by people', price: '31.00')

jackets = Category.create!(title: "Jackets", image_url: 'https://i.ibb.co/px2tCc3/jackets.png')


sneakers = Category.create!(title: "Sneakers", image_url: 'https://i.ibb.co/px2tCc3/jackets.png')



womens = Category.create!(title: "Womens", image_url: 'https://i.ibb.co/GCCdy8t/womens.png')


mens = Category.create!(title: "Mens", image_url: 'https://i.ibb.co/R70vBrQ/men.png')
