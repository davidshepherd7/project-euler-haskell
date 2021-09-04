divisible a b = (mod a b) == 0
intSqrt = ceiling . sqrt . fromIntegral

isPrime :: Integer -> Bool
isPrime n = not $ any (divisible n) [2..intSqrt n]

primes = 2:filter isPrime [2..]

-- main = print $ take 6 primes
main = print $ primes !! (10001 - 1)
