#Pkg.add("BenchmarkTools")
using BenchmarkTools

function triangleo(n::Int)
    n >= 0 || throw(DomainError())
    n > 0 || return []
    rows = [[1]]
    for row_index in 2:n
        previous_row = rows[row_index - 1]
        push!(rows, [
          1;
          [previous_row[i-1] + previous_row[i] for i in 2:row_index-1];
          1;
        ])
    end
    rows
  end

function trianglef(n::Int)
  n >= 0 || throw(DomainError())
  n > 0 || return []
  rows:: Array{Array{Int64}} = [[1]]
  for row_index in 2:n
      previous_row = rows[row_index - 1]
      row = Array{Int}(row_index)
      row[1] = 1
      for i in 2:row_index-1
        row[i] = previous_row[i-1] + previous_row[i]
      end
      row[row_index] = 1
      push!(rows, row)
  end
  rows
end

function triangle(n::Int)
  n >= 0 || throw(DomainError())
  n > 0 || return []
  rows:: Array{Array{Int64}} = Array{Array{Int64}}(n)
  rows[1] = [1]
  for row_index in 2:n
      previous_row = rows[row_index - 1]
      row = Array{Int}(row_index)
      row[1] = 1
      for i in 2:row_index-1
        row[i] = previous_row[i-1] + previous_row[i]
      end
      row[row_index] = 1
      rows[row_index] = row;
  end
  rows
end

function trianglej(n::Int)
    n ≥ 0 || throw(DomainError())
    n > 0 || return []

    rows = [[1]]
    for _ in 2:n
        push!(rows, [0; rows[end]].+[rows[end]; 0])
    end

    rows
end


trianglex(n::Int) = n >= 0 ? [[binomial(i, j) for j in 0:i] for i in 0:n-1] : throw(DomainError())

#triangle(1)
#triangle(10)

#print(@benchmark triangle(50))
