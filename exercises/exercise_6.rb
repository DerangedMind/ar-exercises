require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Sally", last_name: "Seashore", hourly_rate: 80)
@store2.employees.create(first_name: "Mark", last_name: "Zuckerberg", hourly_rate: 120)
@store2.employees.create(first_name: "Tim", last_name: "the Tool Man", hourly_rate: 12)