
divisible a b = (mod a b) == 0
intSqrt = ceiling . sqrt . fromIntegral
isPrime :: Integer -> Bool
isPrime n = not $ any (divisible n) [2..intSqrt n]

primes = 2:filter isPrime [2..]

main = print $ sum . takeWhile (\x -> x < 2000000) $ primes
