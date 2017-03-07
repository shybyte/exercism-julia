function luhn(str::AbstractString)
  ismatch(r"^[\d ]+$", str) || return false

  digits = [c - '0' for c in str if c != ' ']
  length(digits)>1 || return false

  for i in length(digits) - 1:-2:1
      digits[i] = (digits[i] * 2) % 9
  end

  sum(digits) % 10 == 0
end
