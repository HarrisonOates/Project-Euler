# Find the next triangle number that is also hexagonal and pentagonal, after
# T(285) = P(165) = H(143) = 40755. 
# Note that hexagonal numbers are a subset of triangular numbers
# Hence, P(m) = H(n) at some point, so

P(m) = div(m * (3m-1), 2)
H(n) = n*(2n-1)
# Equate these so we arrive at:
# n(2n-1) == \frac{m(3m-1)}{2}
# 2 n^2 - n = (3 m^2)/2 - m/2
# 4n^2 - 2n = 3m^2 - m
function ispentagonal(n)
    j = 1
    M = 0
    while M < n
        M = P(j)
        j += 1
    end

    if M == n
        return true
    else return false
    end
end

i = 143 ::Int64
result = 0
while true
    global i += 1
    global result = H(i)
    if ispentagonal(result) == true
        break
    end
end

Euler45 = result
print(Euler45)
