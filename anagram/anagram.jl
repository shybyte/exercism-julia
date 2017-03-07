
sorted_chars(s) = sort([c for c in s])

function detect_anagrams(subject::AbstractString, candidates::AbstractArray)
  lower_case_subject = lowercase(subject)
  sorted_subject_chars = sorted_chars(lower_case_subject)

  function is_anagram(candidate)
    lowercase_candidate = lowercase(candidate)
    lowercase_candidate != lower_case_subject &&
      sorted_chars(lowercase_candidate) == sorted_subject_chars
  end

  filter(is_anagram, candidates)
end
