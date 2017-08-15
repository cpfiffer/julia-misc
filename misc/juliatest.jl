# Just messing about with Julia.
nheads = @parallel (+) for i=1:100000000
  rand(Bool)
end

a = [1,2,3,4,5]

push!(a, 150)

a[end]

unshift!(a, 1)


b = sort(a)

cmat = [1:5; 10:15]

in(15, cmat)

tup = (5,3,7,8)

b[1] = 3

a,b = b,a

for animal=["cat", "dog", "homo sapiens"]
	println("$animal is an animal")
end

c=0
for i in [1:1000,]
	c += +(c,i,i)
end

c

try
	error("help")
catch e
	println("caught $e")
end

function hard(x,args...)
	random=[rand(x)]
end

hard([5,2])

(x -> x == 3)(3)
