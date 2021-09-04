
divisible a b = mod a b == 0

ok n = all (divisible n) [1..6]

main = print $ head $ filter ok [1..]


-- divisible a b = (mod a b) == 0
-- intSqrt = ceiling . sqrt . fromIntegral

-- isPrime :: Integer -> Bool
-- isPrime n = not $ any (divisible n) [2..intSqrt n]

-- num = product $ filter isPrime [1..10]

-- main = print num
