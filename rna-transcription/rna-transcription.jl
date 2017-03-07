
TRANSLATION_MAP = Dict{Char,Char}(
  'A' => 'U',
  'C' => 'G',
  'G' => 'C',
  'T' => 'A'
)

function to_rna(dna::AbstractString)
  try
    map(c -> TRANSLATION_MAP[c], dna)
  catch e
    error("Invalid DNA")
  end
end
