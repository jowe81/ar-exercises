require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Weber", last_name: "Johannes", hourly_rate: 50)
@store1.employees.create(first_name: "Doe", last_name: "John", hourly_rate: 70)
@store1.employees.create(first_name: "Smith", last_name: "Luke", hourly_rate: 80)

@store2.employees.create(first_name: "Schubert", last_name: "Arnold", hourly_rate: 60)
@store2.employees.create(first_name: "Fox", last_name: "Leonard", hourly_rate: 50)
@store2.employees.create(first_name: "Singh", last_name: "Deep", hourly_rate: 70)
@store2.employees.create(first_name: "Unger", last_name: "David", hourly_rate: 80)
