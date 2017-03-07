FACTOR_RAINDROP_PAIRS = [
    (3, "Pling"),
    (5, "Plang"),
    (7, "Plong")
  ]

function raindrops(number::Int)
  drops = [drop for (factor, drop) in FACTOR_RAINDROP_PAIRS if number % factor == 0]
  isempty(drops) ? string(number) : join(drops)
end
