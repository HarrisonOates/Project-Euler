# How many lattice paths are in a 20x20 grid, if you can only move south or east?
# Thoughts: This is an exercise in combinatorics. We need to get from one corner of the square to another.
# There is a link between lattice paths and Pascal's triangle. If we rotate it 135° about the origin we obtain Pascal's triangle.
# Hence the number of paths from (0,0) → (n,k) is ^{n+k}C_k
function Combination(n ::Int,r ::Int) ::BigInt
    return factorial(big(n))/(factorial(big(r))*(n-r)) 
end

n = 20
k = 20
Euler15 = Combination(n+k,k)
print(Euler15)