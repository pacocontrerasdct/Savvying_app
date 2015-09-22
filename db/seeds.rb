# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Store.delete_all
Item.delete_all

st1 = Store.create!(name: 'Tesco', post_code: 'SW17 6DE', description: 'Nice shop in the area 1', phone: '07123451111', open_hours: '08:00-23:00')
st2 = Store.create!(name: 'Morrison', post_code: 'NE17 6SE', description: 'Nice shop in the area 2', phone: '07123452222', open_hours: '08:00-23:00')
st3 = Store.create!(name: 'Lidl', post_code: 'N10 7EE', description: 'Nice shop in the area 3', phone: '07123453333', open_hours: '09:00-17:00')
st4 = Store.create!(name: 'Savers', post_code: 'E11 5TE', description: 'Nice shop in the area 4', phone: '07123454444', open_hours: '09:00-18:00')

it1 = Item.create!(name: 'Coca Cola Cherry Coke Soda - 2 Liter', description: 'Coca-Cola with cherry flavor and other natural flavors. Caffeine Content: 23 mg/8 fl oz. Very low sodium.', category: 'Beverages', price: '1.79', image: 'http://smapistorage.blob.core.windows.net/thumbimages/108010252_100x100.jpg', store_id: 1)
it2 = Item.create!(name: 'Kelloggs Nutrigrain Cherry Snack Bar - 10.4 Oz', description: 'Naturally and artificially flavored. More of the whole grains your body needs (8 g whole grains). Good source of fiber. 3 g fat per serving. Made with real fruit. Whole Grain: 8 grams per serving. Eat 48 g or more of whole grains daily. One good decision', category: 'Breakfast & Cereal', price: '2.79', image: 'http://smapistorage.blob.core.windows.net/thumbimages/111150326_100x100.jpg', store_id: 1)
it3 = Item.create!(name: 'Walkers Butter Cookie - 5.3 oz (150 g)', description: 'Walkers Butter Cookie - 5.3 oz (150 g)', category: 'Cookies, Snacks & Candy', price: '1.09', image: 'http://smapistorage.blob.core.windows.net/thumbimages/2/493A5C9.jpg', store_id: 2)
it4 = Item.create!(name: 'Nesquik Chocolate Milk - 40.7 Oz', description: '72 Servings. Looking for less sugar? Nesquik has 25% less sugar than other powder & syrup brands (13 g vs 19 g sugar/svg in other leading brands. This product contains 25 g of sugar when mixed with 1 cup of milk.). 99.9% Caffeine free.', category: 'Beverages', price: '5.79', image: 'http://smapistorage.blob.core.windows.net/thumbimages/119020151_100x100.jpg', store_id: 3)

puts "seeded! with #{Item.all.count} items"
puts "seeded! with #{Store.all.count} stores"









