using Calculus
using Gadfly

function f(x)
        y = sin(x)
end

function f_prime(x)
        y = derivative(f(x))
end

x = -50:0.0001:50;
f1 = f(x);
f2 = derivative(f)
