def leap_year?(year)
  (year%100).zero? ? (year%400).zero? : (year%4).zero?
end

