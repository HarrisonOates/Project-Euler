# The nth prime is roughly around: 
n = 10001 ::Int
LowerBound = convert(Int64, round(n*log(n) + n*(log(log(n-1))))) 
UpperBound = convert(Int64, round(n*log(n) + n*log(log(n))))
# as derived from: https://en.wikipedia.org/wiki/Prime_number_theorem
# From here, we can apply Eratosthene's Sieve:

PrimeNumber = 0 
for i in LowerBound:UpperBound
    if i % 2 == 0
        continue
    else for j in 3:i
        if i % j == 0
            continue
        else global PrimeNumber = i    
        end
    end
end        
end

print(PrimeNumber)
