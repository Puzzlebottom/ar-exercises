require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "\nExercise 7"
puts '----------'

puts 'What should we name our store?'
print '> '
@new_store = Store.create(name: gets.chomp)

puts @new_store.errors.full_messages if @new_store.errors.any?
