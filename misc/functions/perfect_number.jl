# Cameron Pfiffer
# August 15th, 2017

using Primes

function aliquot(x::Int64, verbose=false)
    divisors = []
    for i in 1:x-1
        if(x%i == 0)
            append!(divisors, i)
        end
    end
    if verbose == true print(divisors) end
    return sum(divisors)
end


function next_perfect(x::Int64, limit=Inf64)
    # Given a number, find the next highest perfect number.
    found = false
    while(found==false)
        # You can set a computational limit with the 'limit' argument.
        if (x >= limit) break end
        if aliquot(x) == x
            print(x, " is the next perfect number.")
            found=true
            break
        end
        x += 1
    end
    return x
end
