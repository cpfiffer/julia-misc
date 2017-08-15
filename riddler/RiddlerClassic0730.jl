#=
From Itay Bavly, a chain-link number problem:

You start with the integers from one to 100, inclusive, and you want to organize
them into a chain. The only rules for building this chain are that you can only
use each number once and that each number must be adjacent in the chain to one
of its factors or multiples. For example, you might build the chain:

4, 12, 24, 6, 60, 30, 10, 100, 25, 5, 1, 97

You have no numbers left to place after 97, leaving you with a finished chain
of length 12.

What is the longest chain you can build?

Extra credit: What if you started with more numbers, e.g., one through 1,000?
=#

# Test if x can be followed by y
function valid(x, y, limit)
	# Determine if y is a multiple of x
	mul = multiples(x, limit) # Get multiples of x
	index = findin(mul, y) # Find if y is in the list of x's multiples
	if index != [] # If the index isn't zero
		#print(mul, "\n")
		return true
	end

	# Now determine if y is a factor of x
	if x % y == 0
		return true
	end
	return false
end

function multiples(x, limit)
	vals = [0]
	for i in 1:limit
		#print(i, "\n")
		if (i % x == 0) & (i != x)
			#print(i, " modulo ", x, " is ", i%x, "\n")
			#print(i, " is a multiple of ", x)
			append!(vals, i)
		end
	end
	if vals == [0]
		#print("No multiples of ", x, ".", "\n")
	end

	return vals
end

# Remove y from x
function remove_num(x, y)
	index = findin(x, y)
	deleteat!(x, index)
	return x
end

function makechain(limit::Int64)
  possible = Array(1:limit)
  first = rand(possible)
  remove = getindex(possible, first)
  deleteat!(possible,remove)

  chain = [first]
	#print("First number in the chain is ", chain[1], "\n")

	# Pick a random number.
	# Check if that number is valid.
	# If it isn't pick a new one, until they're all gone.
	testPosition = possible
	shuffle!(testPosition)
	for i in testPosition
		v = valid(chain[end], i, limit)
		#print("\n", "\nIteration: ", i,"\nRandom Number: ", i, "\nValidity: ", v )
		if v == true
			append!(chain, i)
		end
	end

  return chain
end

function find_longest(iterations::Int64, limit=100)
	longest = []
	for i in 1:iterations
		chain = makechain(limit)
		if length(chain) > length(longest)
			longest = chain
		end
	end
	return longest
end


longest = find_longest(1000000, 100)
