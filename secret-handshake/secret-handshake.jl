EVENTS = ["wink","double blink","close your eyes","jump"]

function secret_handshake(code::Integer)
  isBitSet(bit) = (code & (1 << bit)) > 0
  events = [e for (i, e) in enumerate(EVENTS) if isBitSet(i-1)]
  isBitSet(4) ? reverse(events) : events
end
