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

immutable Algo
    one::Int64 = rand(1:100)

    two::Char = rand('a':'z')
end

function new_individual()
    base = "Algo("
    fields = fieldnames(Algo)
    for i in fields
        print(i)
    end
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
