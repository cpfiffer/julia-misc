#=
Pseudocode for evolutionary computing:

begin
    init population randomly
    evaluate each candidate
    while (termination condition != true) do
        select parents
        recombine pairs of parents
        mutate offspring
        evaluate new candidates
        select individuals for the next generation
    end
end
=#

type Algo
    one :: Int64
    two :: Char
end

function make_pop()
    chars = rand('a':'z', 100)
    nums = rand(1:100, 100)
    ls = []
    for i in 1:100
        tmp = Algo(nums[i], chars[i])
        push!(ls, tmp)
    end
    ls
end

function evo()
    pop = make_pop()
end

pop = evo();
ex1 = parse("pop[1].one")
eval(ex1)
