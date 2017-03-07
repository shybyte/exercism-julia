function is_leap_year(year::Int)
  isDivisibleBy(x) = year % x == 0
  (isDivisibleBy(4) && !isDivisibleBy(100)) || isDivisibleBy(400)
end
