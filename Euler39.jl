using Base
# If p is the perimeter of a right angle triangle with integral length sides, {a,b,c}, there are exactly three solutions for p = 120.
# {20,48,52}, {24,45,51}, {30,40,50}
# For which value of p ≤ 1000, is the number of solutions maximised?

# Information:
# a + b + c = p
# a^2 + b^2 = c^2

# Hence a + b + √(a^2+b^2) = p
# a^2 + b^2 = (a + b - p)^2
# a^2 + b^2 = p^2 + a^2 + b^2 -2pa – 2pb + 2ab
# 0 = p^2 - 2pa - 2pb + 2ab
# 2pb - 2ab = p^2 - 2pa
# b(2p - 2a) = p^2 - 2pa
# b = (p^2 - 2pa)/(2p - 2a): equation 1
# Observations: 
# if a is odd and b is odd then c is even , so p is even.
# if a is odd and b is even then c is odd, so p is even
# if a is even and b is even then c is even, so p is even.
# Therefore p % 2 == 0.
# Furthermore, a < c, b < c. Without loss of generality a ≤ b.
# Therefore a ≤ b < c.
# This implies a < p/3.
function tripletmaximiser(upper)
    Resultsolutions = 0
    result = 0
    for p in range(2, stop = upper, step = 2)
        solutions = 0
        a = 1 ::Int
        while a < p/3
            if ((p^2 - 2*p*a) % (2*p - 2*a) == 0)
                solutions += 1
            end
            if solutions > Resultsolutions
                Resultsolutions = solutions
                result = p
            end
            a += 1
        end
    end
    return result
end

Euler39 = tripletmaximiser(1000)
print(Euler39)