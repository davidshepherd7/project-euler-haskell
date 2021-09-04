
square :: Num a => a -> a
square x = x^2

sumSq :: Num a => [a] -> a
sumSq l = sum $ map square l

sqSum :: Num a => [a] -> a
sqSum l = square $ sum l

diff :: Integer -> Integer
diff n = abs $ (sumSq [1..n]) - (sqSum [1..n])

main = print $ diff 100
