import Base: AbstractSet, isempty, length, in, issubset, start, next, done,
             push!, ==, copy, intersect!, intersect, union!, union

type CustomSet{T} <: AbstractSet
  map::Dict{T, Bool}
end

function CustomSet{T}(elements::Vector{T})
  map = Dict{T, Bool}()
  for el in elements
    map[el] = true
  end
  CustomSet(map)
end

function isempty{T}(set::CustomSet{T})
  isempty(keys(set.map))
end

function in{T}(el::T, set::CustomSet{T})
  haskey(set.map, el)
end

# If you define in for a type,
# issubset also works without explicitely defining it.

function disjoint{T}(set1::CustomSet, set2::CustomSet{T})
  all(el -> !(el in set2), keys(set1.map))
end

function ==(set1::CustomSet, set2::CustomSet)
  issubset(set1,set2) && issubset(set2,set1)
end

function push!{T}(set::CustomSet{T}, el::T)
  set.map[el] = true
end

function copy{T}(set::CustomSet{T})
  CustomSet(collect(keys(set.map)))
end

function intersect!(set1::CustomSet, set2::CustomSet)
  for key1 in keys(set1.map)
    if !(key1 in set2)
      delete!(set1.map, key1)
    end
  end
  set1
end

function complement!(set1::CustomSet, set2::CustomSet)
  for key1 in keys(set1.map)
    if key1 in set2
      delete!(set1.map, key1)
    end
  end
  set1
end

function intersect(set1::CustomSet, set2::CustomSet)
  intersect!(copy(set1), set2)
end

function complement(set1::CustomSet, set2::CustomSet)
  complement!(copy(set1), set2)
end

function union!(set1::CustomSet, set2::CustomSet)
  for key2 in keys(set2.map)
    push!(set1, key2)
  end
  set1
end

function union(set1::CustomSet, set2::CustomSet)
  union!(copy(set1), set2)
end

function length(set::CustomSet)
  length(keys(set.map))
end

function length(set::CustomSet)
  length(keys(set.map))
end

# Iterable
function start(set::CustomSet)
  start(keys(set.map))
end

function next(set::CustomSet, iterator)
  next(keys(set.map), iterator)
end

function done(set::CustomSet, iterator)
  done(keys(set.map), iterator)
end
