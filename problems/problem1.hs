{-
    # Problem
    https://projecteuler.net/problem=1
-}

res:: Int
res = sum [x | x <- [1..999], x `mod` 3 == 0 || x `mod` 5 == 0]

{-
    status : passed
-}