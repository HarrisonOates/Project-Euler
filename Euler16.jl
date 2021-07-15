# Find sum of digits in 2^1000
base = convert(BigInt, 2)
power = convert(BigInt, 1000)
Euler16 = sum(digits(base^power)) 
print(Euler16)