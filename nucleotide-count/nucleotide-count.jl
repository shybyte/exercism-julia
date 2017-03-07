function count_nucleotides(strand::AbstractString)
  countMap = Dict{Char,Integer}('A' => 0, 'C' => 0, 'G' => 0, 'T' => 0)
  for nucleotide in strand
    haskey(countMap, nucleotide) || error("Invalid nucleotide \"$(nucleotide)\".")
    countMap[nucleotide] += 1
  end
  countMap
end
