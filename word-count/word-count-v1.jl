function wordcount(sentence::AbstractString)
  countMap = Dict{String,Integer}()
  lower_case_tokens = split(lowercase(sentence), r"[^\w']+")
  words = filter(w -> w!="" && w!="'" , lower_case_tokens)
  un_quoted_words = map(w -> replace(w, r"^'(.*)'$", s"\1"), words)
  for word in un_quoted_words
    countMap[word] = get(countMap, word, 0) + 1
  end
  countMap
end
