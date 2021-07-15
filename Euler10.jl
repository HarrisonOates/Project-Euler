# Summation of primes below 2 million
using Primes, Lazy
function SumOfPrimes(n)
    result = sum(filter(isprime, 1:n))
    println(result)
end

println("euler10 = ")
SumOfPrimes(2000000)