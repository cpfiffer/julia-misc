#=
A quick test to evaluate Julia's claim that for loops
are quicker than vectorization -- that's not what I
found. It's also possible I'm just an idiot and do my
for loops wrong, but I dunno.
=#

a = rand(100000);
b = rand(100000);

print("Vectorized: " )
@time d = a'*b

function for_test()
    c=0
    for i in 1:length(a)
        c += a[i] * b[i]
    end
    c
end

print("\nFor Loop: ")
@time c=for_test()
