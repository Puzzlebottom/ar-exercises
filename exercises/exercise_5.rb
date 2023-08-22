require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "\nExercise 5"
puts '----------'

puts "Total revenue: $#{Store.sum(:annual_revenue)}"
puts "Average revenue: $#{Store.average(:annual_revenue).round}"
puts "Stores generating over $1 million: #{Store.where(annual_revenue: ..1_000_000).count}"
