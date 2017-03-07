import DataStructures.DefaultDict

function wordcount(sentence::AbstractString)
  lower_case_tokens = split(lowercase(sentence), r"[^\w']+",keep=false)
  un_quoted_words = [strip(w, '\'') for w in lower_case_tokens]
  countMap = DefaultDict{String,Integer}(0)
  for word in filter(w -> !isempty(w), un_quoted_words)
    countMap[word] += 1
  end
  countMap
end
