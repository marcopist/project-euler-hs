module Problems.Utils where

isPrime :: Int -> Bool
isPrime k = (k > 1) && not (any (\x -> mod k x == 0) [2.. floor $ sqrt $ fromIntegral k])

