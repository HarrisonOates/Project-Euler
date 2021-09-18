# It can be observed that the square of the sum is simply S^2, while the sum of squares can be arranged as a Pyramidal shape. 

# Returns sum of first n natural numbers
function Summation(n) 
    return (n*(n+1))/2
end

# Pyramidal number, a special case of Faulhaber's formula
function Pyramidal(n) 
    return (n*(n+1)*(2n+1))/6
end

Euler6 = (Summation(100))^2 - Pyramidal(100)  
print(Euler6)
