# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# products = product.create ([{name: 'Tent'}, {name: 'Hammock'}, {name: 'Shoes'}])

Product.create(:name => "Apple", :description => "all your favorite apple flavors", :image_url => "apple.jpg", :color => "green")
Product.create(:name => "Tent", :description => "Get your outdoor tents right here", :image_url => "tent.jpeg", :color => "grey")
Product.create(:name => "Hammock", :description => "Outdoor luxury, it can happen with these hammocks", :image_url => "hammock-1.jpg", :color => "black")
Product.create(:name => "Bike", :description => "", :image_url => "girlbike.jpg")

# Product.create(:name => "", :description => "", :image_url => "")

# ..met elke db:seed wordt toegevoegd