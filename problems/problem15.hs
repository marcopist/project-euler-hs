{-
    # Problem: https://projecteuler.net/problem=15
    Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
    How many such routes are there through a 20×20 grid?
-}

data Direction = GoRight | GoDown deriving (Show, Eq)
data Position = Position {x::Int, y::Int} deriving (Show, Eq)

-- | Returns the next position given a direction
nextPosition :: Position -> Direction -> Position
nextPosition (Position x y) GoRight = Position (x+1) y
nextPosition (Position x y) GoDown = Position x (y+1)



{-
    status : in progress
-}
