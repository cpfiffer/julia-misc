# 𝕮ameron 𝕻fiffer
# August 20th, 2017

#=
I built this little program to solve a problem my wife was running into,
where she plays something like a permutations-based crossword puzzle.

You are given six different characters, and have to combine them into
many possible words. Sometimes you know where some letters are, and so
I included a regular expression filter to solve for words where you
know something about it's consitutents.
=#

using Combinatorics

function as_char(x)
    y = Array{Char}(length(x))
    for i in 1:length(x)
        y[i] = Char(x[i])
    end
    return y
end

function remove(x, char)
    print(char)
    filter!(z -> z != char, x)
end

function words(letters, amount, regxp="")
    letters = as_char(letters)
    all = broadcast(String, collect(permutations(letters,amount)))
    if (regxp != "")
        filter!(x -> ismatch(regxp, x), all)
    end
    return all
end

input = "sueedf"
filterby = Regex(".u...")
output = words(input, 5, filterby)
print(output)
