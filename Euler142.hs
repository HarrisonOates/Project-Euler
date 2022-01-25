-- find smallest x+y+z,  x > y > z > 0, integers, 
-- such that x+y, x-y, x+z, x-z, y+z,y-z are all perfect squares

-- (x+y)(x-y) = x^2 - y^2
-- (x+z)(x-z) = x^2 - z^2
-- (y+z)(y-z) = y^2 - z^2

-- Observations:
-- Need two perfect squares a distance of 2y, 2z away.
-- 1, 4, 9, 16, 25
-- Would have to be at least one gap away from each other, so that there is an even distance
-- e.g 1, 9 or 1, 25 for a pair
-- (x+y) - (y-z) = x + z, which is one of the other perfect squares.
-- Likewise, (x+y) - (y+z) = x - z
-- Hence, we need to generate perfect squares which are a perfect square distance apart, so 
import arithmoi

isSquare :: Int -> Int -> Int
isSquare x y = do
  if (mod ((x + y) sqrt(x+y)) == sqrt(x+y)) then 1
  else 0

