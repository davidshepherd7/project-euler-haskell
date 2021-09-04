-- Generate primes, not an efficient method but easily good enough for this
-- problem (total runtime ~ 10 sec).

divisible a b = (mod a b) == 0
intSqrt = ceiling . sqrt . fromIntegral

isPrime :: Integer -> Bool
isPrime n = not $ any (divisible n) [2..intSqrt n]

primes = filter isPrime [2..]

-- Now take the first prime divisor
theNum = 600851475143
myPrimes = (takeWhile (< intSqrt theNum) primes)
primeDivisors = filter (divisible theNum) $ reverse myPrimes

main = print $ head $ primeDivisors

