mfib = (map fib [0..] !!)
     where
     fib 0 = 0
     fib 1 = 1
     fib n = mfib (n - 1) + mfib (n - 2)

fib 0 = 0
fib 1 = 1
fib n = mfib (n - 1) + mfib (n - 2)

-- Not really much speed difference here

fibs = map fib [0..]

main = print $ sum $ filter even $ takeWhile (< 4000000) fibs
