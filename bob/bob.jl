function bob(message::AbstractString)
  stripped_message = strip(message)
  if stripped_message == ""
      "Fine. Be that way!"
  elseif uppercase(stripped_message) == stripped_message && any(isupper, stripped_message)
      "Whoa, chill out!"
  elseif endswith(stripped_message, "?")
      "Sure."
  else
      "Whatever."
  end
end
