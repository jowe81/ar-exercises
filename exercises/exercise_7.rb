require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

print "Enter store name: "
name = gets.chomp
user_store = Store.new(name: name)
user_store.save

user_store.errors.each do |err|
  puts "Error while validating property: #{err} - #{user_store.errors[err]}"
end