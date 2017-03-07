"Square the sum of the numbers up to the given number"
function sum_of_squares(n::Int)
  sum([x^2 for x in 1:n])
end

"Sum the squares of the numbers up to the given number"
function square_of_sum(n::Int)
  sum(1:n)^2
end

"Subtract sum of squares from square of sums"
function difference(n::Int)
  square_of_sum(n) - sum_of_squares(n)
end
