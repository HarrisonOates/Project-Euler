# What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?
# Let's cut this problem down a bit.
# If we hold the first digit constant, at 0, we then have 9! permutations
# 10! = 3628800
#  9! =  362880
# That means that the first digit cannot be zero
a = [0,1,2,3,4,5,6,7,8,9]
#using Combinatorics

# Taken from Combinatorics julia library
function nthperm!(a::AbstractVector, k::Integer)
    n = length(a)
    n == 0 && return a
    f = factorial(oftype(k, n))
    0 < k <= f || throw(ArgumentError("permutation k must satisfy 0 < k ≤ $f, got $k"))
    k -= 1 # make k 1-indexed
    for i=1:n-1
        f ÷= n - i + 1
        j = k ÷ f
        k -= j * f
        j += i
        elt = a[j]
        for d = j:-1:i+1
            a[d] = a[d-1]
        end
        a[i] = elt
    end
    a
end

Euler24 = nthperm!(collect(a), 1000000)
print(Euler24)
