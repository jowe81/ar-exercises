require_relative '../stretch_setup'
require_relative './stretch_ex_1'

puts "Exercise 2"
puts "----------"

# Make sure non-empty stores cannot be destroyed
@store1 = Store.find(1)
if @store1.destroy
  puts "Store #{@store1.name} destroyed! It has #{@store1.employees.size} employees =/"
else
  puts "Could not destroy store :)"
end

# Make sure empty stores can be destroyed
@empty_store = Store.create!(name: 'Test Empty Store', annual_revenue: 0, mens_apparel: true)
if @empty_store.destroy
  puts "Empty Store destroyed! This is good"
else
  puts "Whoa! Empty store should be destroyable... Not cool!"
end


# Your code goes here ...


