require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(
  name: "Surrey",
  annual_revenue: 224000,
  womens_apparel: true,
  mens_apparel: false
)

Store.create(
  name: "Whistler",
  annual_revenue: 1900000,
  womens_apparel: false,
  mens_apparel: true
)

Store.create(
  name: "Yaletown",
  annual_revenue: 430000,
  womens_apparel: true,
  mens_apparel: true
)

stores = Store.where(mens_apparel: true)

puts "Stores with mens apparel:"
stores.each do |store|
  puts "Name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end

puts "Stores with revenue < 1M:"
Store.where(annual_revenue: 0..999999).each do |store|
  puts "Name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end
