require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

print "Enter a new store name > "
new_store_name = gets.chomp

@new_store = Store.create(name: new_store_name)

puts "Invalid store creation. Please correct #{@new_store.errors.count} error(s)." unless @new_store.valid?