function encode(c:: Char)
  isdigit(c) ? c : Char('z' - (c-'a'))
end

function encode(input::AbstractString)
  cleaned_input = replace(lowercase(input), r"[^\da-z]", "");
  chunks(map(encode, cleaned_input))
end

function chunks(input::AbstractString)
  strip(replace(input, r"(.{5})", s"\1 "))
end

function decode(input::AbstractString)
  map(encode, replace(input," ", ""))
end
