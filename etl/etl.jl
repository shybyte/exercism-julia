function transform(input::Dict{Int64, Vector{Char}})
  result :: Dict{Char, Int64} = Dict()
  for (score, chars) in input
    for char in chars
      result[lowercase(char)] = score
    end
  end
  result
end
