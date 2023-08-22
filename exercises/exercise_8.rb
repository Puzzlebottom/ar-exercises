require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "\nExercise 8"
puts '----------'

@fat_travis = Store.find(4).employees.create(first_name: 'Fat', last_name: 'Travis', hourly_rate: 111)
puts "Password: #{@fat_travis.password}"
