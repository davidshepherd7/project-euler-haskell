import Data.List

triples :: [[Int]]
triples = [[p, n, m] | m <- [1..], n <- [1..m], p <- [1..n]]

isPythag :: [Int] -> Bool
isPythag t = (t!!0)^2 + (t!!1)^2 == (t!!2)^2

pythagTriples :: [[Int]]
pythagTriples = filter isPythag $ triples

filterSums :: Int -> [[Int]] -> [[Int]]
filterSums n = filter (\ l -> sum l == n)

main = print $ product . head . filterSums 1000 $ pythagTriples

