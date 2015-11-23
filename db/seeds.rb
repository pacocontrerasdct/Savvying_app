# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Store.delete_all
Item.delete_all
Category.delete_all

st1 = Store.create!(name_store: 'Tesco', post_code: 'Leyton 825 High Rd London E10 7AA', description_store: 'Nice shop in the area 1', phone: '03456779427', open_hours: '06:00-24:00')
st2 = Store.create!(name_store: 'Poundland', post_code: '413 Hoe St London E17 9AP', description_store: 'Nice shop in the area 2', phone: '02085562317', open_hours: '08:30-19:00')
st3 = Store.create!(name_store: 'Iceland', post_code: '612 Lea Bridge Rd
London E10 7DL', description_store: 'Nice shop in the area 3', phone: '02085565280', open_hours: '08:30-20:00')
st4 = Store.create!(name_store: 'Savers', post_code: '557-559 Lea Bridge Rd London E10 7EQ', description_store: 'Nice shop in the area 4', phone: '07123454444', open_hours: '09:00-18:00')

it1 = Item.create!(name_item: 'Coca Cola Cherry Coke Soda - 2 Liter', description_item: 'Coca-Cola with cherry flavor and other natural flavors. Caffeine Content: 23 mg/8 fl oz. Very low sodium.', category_id: 1, price: '1.79', image_item: '108010252_100x100.jpg', store_id: 1)
it2 = Item.create!(name_item: 'Kelloggs Nutrigrain Cherry Snack Bar - 10.4 Oz', description_item: 'Naturally and artificially flavored. More of the whole grains your body needs (8 g whole grains). Good source of fiber. 3 g fat per serving. Made with real fruit. Whole Grain: 8 grams per serving. Eat 48 g or more of whole grains daily. One good decision', category_id: 2, price: '2.79', image_item: '111150326_100x100.jpg', store_id: 1)
it3 = Item.create!(name_item: 'Walkers Butter Cookie - 5.3 oz (150 g)', description_item: 'Walkers Butter Cookie - 5.3 oz (150 g)', category_id: 3, price: '1.09', image_item: '2/493A5C9.jpg', store_id: 2)
it4 = Item.create!(name_item: 'Nesquik Chocolate Milk - 40.7 Oz', description_item: '72 Servings. Looking for less sugar? Nesquik has 25% less sugar than other powder & syrup brands (13 g vs 19 g sugar/svg in other leading brands. This product contains 25 g of sugar when mixed with 1 cup of milk.). 99.9% Caffeine free.', category_id: 1, price: '5.79', image_item: '119020151_100x100.jpg', store_id: 3)


cat1 = Category.create!(name: 'Beverages')
cat2 = Category.create!(name: 'Breakfast & Cereal')
cat3 = Category.create!(name: 'Cookies, Snacks & Candy')
cat4 = Category.create!(name: 'Meat')
cat5 = Category.create!(name: 'Fish')
cat6 = Category.create!(name: 'Salad Vegetables')
cat7 = Category.create!(name: 'Cooked Vegetables')
cat8 = Category.create!(name: 'Dairy')
cat9 = Category.create!(name: 'Fats & Oils')
cat10 = Category.create!(name: 'Sweeteners')
cat11 = Category.create!(name: 'Fruits & Nuts')
cat12 = Category.create!(name: 'Dressing & Condiments')
cat13 = Category.create!(name: 'Canned Goods & Soups')
cat14 = Category.create!(name: 'Frozen Foods')
cat15 = Category.create!(name: 'Personal Care & Pharmacy')
cat16 = Category.create!(name: 'Beer, Wine & Spirits')
cat17 = Category.create!(name: 'Paper, Cleaning & Home')
cat18 = Category.create!(name: 'Baby')
cat19 = Category.create!(name: 'Pet Care')
cat20 = Category.create!(name: 'Bread & Bakery')


puts "seeded! with #{Item.all.count} items"
puts "seeded! with #{Store.all.count} stores"
puts "seeded! with #{Category.all.count} categories"









