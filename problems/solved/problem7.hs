{-
    # Problem: https://projecteuler.net/problem=7
    By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
    What is the 10 001st prime number?
-}
-- From problem 3
isPrime :: Int -> Bool
isPrime k = (k > 1) && not (any (\x -> mod k x == 0) [2..k-1])

allPrimes :: [Int]
allPrimes = filter isPrime [1..]

res :: Int
res = last $ take 10001 allPrimes

{-
    status : passed
-}