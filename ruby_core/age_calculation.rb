SECONDS_IN_DAY = 60*60*24
DAYS_IN_MONTH = 30.4377
MONTHS_IN_YEAR = 12
DAYS_IN_YEAR = 365.24

def calculate_age
  puts "Enter day: "
  day = gets.chomp
  puts "Enter month: "
  month = gets.chomp
  puts "Enter year: "
  year = gets.chomp

  date_of_birth = Time.new(year.to_i, month.to_i, day.to_i)
  different_in_seconds = Time.now - date_of_birth

  age_years = different_in_seconds / SECONDS_IN_DAY / DAYS_IN_YEAR
  age_months = (age_years - age_years.floor) * MONTHS_IN_YEAR
  age_days = (age_months - age_months.floor) * DAYS_IN_MONTH

  puts "Your age is #{age_years.floor} years #{age_months.floor} months and #{age_days.ceil} days"
end

calculate_age
