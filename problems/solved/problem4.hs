{-
    # Problem: https://projecteuler.net/problem=4
    A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
    Find the largest palindrome made from the product of two 3-digit numbers.
-}

isPalindrome :: String -> Bool
isPalindrome x = x == reverse x

isPalindromeNum :: Show a => a -> Bool
isPalindromeNum x = isPalindrome $ show x

validFactors :: [Int]
validFactors = [999,998..100]

res :: Int
res = maximum $ filter isPalindromeNum [x * y | x <- validFactors, y <- validFactors]

{-
    status : passed
-}