function transpose_strings(input::AbstractArray)
  input != [] || return []
  result = []
  result_length = maximum([length(s) for s in input])
  for col in 1:result_length
    new_line = ""
    for (line_i, line) in enumerate(input)
      if col<=length(line)
        missing_chars = line_i - 1 - length(new_line)
        if missing_chars > 0
          new_line *= join(fill(' ', missing_chars))
        end
        new_line *= string(line[col])
      end
    end
    push!(result, new_line)
  end
  result
end
