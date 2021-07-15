# Find the next triangle number that is also hexagonal and pentagonal, after
# T(285) = P(165) = H(143) = 40755. 
# Note that hexagonal numbers are a subset of triangular numbers
# Hence, P(m) = H(n) at some point, so

P(m) = div(m * (3m-1), 2)
H(n) = n*(2n-1)
# Equate these so we arrive at:
# n(2n-1) == \frac{m(3m-1)}{2}
# Completing the square yields (6m-1)^2 - 3(4n-1)^2 = -2
# This expands to 36n^2 - 48m^2 - 12n + 24m = 0