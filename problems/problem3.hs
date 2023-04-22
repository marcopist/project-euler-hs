{-
    # Problem: https://projecteuler.net/problem=3
    The prime factors of 13195 are 5, 7, 13 and 29.
    What is the largest prime factor of the number 600851475143 ?
-}

isPrime :: Int -> Bool
isPrime k = (k > 1) && not (any (\x -> mod k x == 0) [2..k-1])

primeFactors :: Int -> [Int]
primeFactors 1 = []
primeFactors x = if isPrime x then [x] else factor : primeFactors (x `div` factor)
                where
                    factor = head $ filter isPrimeFactor [2..x-1]
                    isPrimeFactor k = isPrime k && (x `mod` k == 0)

res :: Int
res = maximum $ primeFactors 600851475143

{-
    status : passed
-}