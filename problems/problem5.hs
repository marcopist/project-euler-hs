{-
    # Problem: https://projecteuler.net/problem=5
    2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
    What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
-}
import Data.List (group, sort)
import Control.Arrow ((&&&))

-- Copying this from problem 3
isPrime :: Int -> Bool
isPrime k = (k > 1) && not (any (\x -> mod k x == 0) [2..k-1])

primeFactors :: Int -> [Int]
primeFactors 1 = []
primeFactors x = if isPrime x then [x] else factor : primeFactors (x `div` factor)
                where
                    factor = head $ filter isPrimeFactor [2..x-1]
                    isPrimeFactor k = isPrime k && (x `mod` k == 0)


-- New for problem 5

-- | mcm : minimum common multiple
mcm :: [Int] -> Int
mcm nums = countedpmfcs
        where
            pmfcs = map primeFactors nums
            countedpmfcs = map (map (head &&& length) . group . sort) pmfcs -- [(primeFactor, occurrencies)]
            joinedcounts = concat countedpmfcs


res = mcm [1..20]

{-
    status : in progress
-}