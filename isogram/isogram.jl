function isisogram(s::AbstractString)
  letters = replace(lowercase(s), r"[^[:alpha:]]", "")
  length(Set(letters)) == length(letters)
end


sort("abcb")
