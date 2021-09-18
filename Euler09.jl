# In a pythagoreantriple find a, b, c such that a + b + c = 1000 
# Using Euclid's formula with m > n > 0
function euler9(n)
# n is the sum of the sides
    for a = 1:n, b =1:n-a, c = n-a-b
        a^2 + b^2 == c^2 && return a*b*c
    end
end

euler9(1000)
