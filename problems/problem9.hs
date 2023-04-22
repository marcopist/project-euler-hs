{-
    # Problem: https://projecteuler.net/problem=9

-}

res :: Int
res = head [a * b * c | c <- [1..], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a + b + c == 1000]

{-
    status : passed
-}