require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

@total_revenue = Store.all.sum(:annual_revenue)
puts "The company is making #{@total_revenue}."
@avg_revenue = Store.all.average(:annual_revenue)
puts "Stores are, on average, making #{@avg_revenue}."