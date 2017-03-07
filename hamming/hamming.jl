function distance(s1::AbstractString, s2::AbstractString)
  length(s1) == length(s2) || throw(ArgumentError("Input arrays have different length."))
  count(pair -> pair[1] != pair[2], zip(s1, s2))
end
