{-
    # Problem: https://projecteuler.net/problem=5
    2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
    What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
-}

-- | Generalised Least Common Multiple
glcm :: [Int] -> Int
glcm [] = 1
glcm [x] = x
glcm [x, y] = lcm x y
glcm (x:xs) = lcm x $ glcm xs

res :: Int
res = glcm [1..20]
{-
    status : passed
-}