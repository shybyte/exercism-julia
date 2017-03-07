function sieve(limit::Integer) :: Vector{Int}
  sieve = falses(limit);
  primes = [];
  for i in 2:limit
      if !sieve[i]
          push!(primes, i)
          for i2 in i:i:limit
              sieve[i2] = true
          end
      end
  end
  primes
end
