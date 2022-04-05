require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
vancouver_store = Store.new
vancouver_store.name = "Vancouver"
vancouver_store.annual_revenue = 300000
vancouver_store.mens_apparel = true
vancouver_store.womens_apparel = true
vancouver_store.save

burnaby_store = Store.create(
  name: "Burnaby",
  annual_revenue: 1260000, 
  womens_apparel: true,
  mens_apparel: false,  
)
gastown_store = Store.create(
  name: "Gastown",
  annual_revenue: 190000,
  womens_apparel: false,
  mens_apparel: true
)

puts "Stores in database: #{Store.count}"