{-
    # Problem: https://projecteuler.net/problem=15
    Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
    How many such routes are there through a 20×20 grid?
-}

cnt :: (Eq t, Num t) => t -> t -> t
cnt x 0 = x
cnt 0 y = y
cnt x y = x + y + cnt (x-1) (y-1)

res :: Integer
res = cnt 20 20

{-
    status : in progress
-}
