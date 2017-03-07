function trinary_to_decimal(str::AbstractString) :: Int
  ismatch(r"^[012]+$", str) || return 0
  reduce((acc, digit) -> 3* acc + digit-'0', 0, str)
end
