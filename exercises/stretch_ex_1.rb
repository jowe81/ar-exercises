require_relative '../stretch_setup'

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

def print_store_count
  puts "Stores in database: AR::count #{Store.count}, class callback count #{Store.store_count}"  
end

def print_errors(errors)
  errors.each do |err|
    puts "Error on #{err}: #{errors[err]}"
  end
end

print_store_count

vancouver_store.employees.create(last_name: "Wiens", first_name: 'Harold', hourly_rate: 60)
vancouver_store.employees.create(last_name: "Gadd", first_name: 'Ben', hourly_rate: 60)