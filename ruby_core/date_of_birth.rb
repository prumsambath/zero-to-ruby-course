$:.push '~/Documents/ruby/zero-to-ruby-course/ruby_core' 
require 'age_calculation'
require 'date'

def get_entered_date_of_birth
  puts "Enter day: "
  day = gets.chomp
  puts "Enter month: "
  month = gets.chomp
  puts "Enter year: "
  year = gets.chomp 

  calculate_age(day, month, year)
end

get_entered_date_of_birth
