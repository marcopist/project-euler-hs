{-
    # Problem: https://projecteuler.net/problem=35
    The number, 197, is called a circular prime because all rotations of the digits: 197, 971, and 719, are themselves prime.
    There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.
    How many circular primes are there below one million?

-}

import Problems.Utils (isPrime)


rotations :: Show p => p -> [Int]
rotations n = [read $ take digits $ drop offset $ cycle nstr| offset <- [0..digits-1]]
    where
        nstr :: [Char] = show n 
        digits :: Int = length $ show n


isCircular :: Int -> Bool
isCircular = all isPrime . rotations

res :: Int
res = length $ filter isCircular [2..10^6]

{-
    status : passed
-}
