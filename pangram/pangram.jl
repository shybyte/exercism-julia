keep_alpha(s) = replace(s, r"[^a-z]", "")

function ispangram(input::AbstractString)
  alpha_count = input |> lowercase |> keep_alpha |> unique |> length
  alpha_count == 26
  # length(unique(replace(lowercase(input), r"[^a-z]", ""))) == 26
end
ispangram("the quick brown fox jumps over the lazy dog")
