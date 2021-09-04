
import Data.List

threeDigits =  [999,998..100]
-- threeDigits =  [99,98..10]

reversedCompare a b = compare b a

cartProd xs ys = [[x,y] | x <- xs, y <- ys]

products = sortBy reversedCompare $ map product (cartProd threeDigits threeDigits)

palindrome a = show a == reverse (show a)
-- main = print (map palindrome [11, 9009, 9019])

result = head $ filter palindrome products 

main = print result
