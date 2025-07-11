-- Haskell program to calculate sum of natural numbers till n
-- Written by M.V.Harish Kumar on 11-07-2025
import System.IO (hFlush, stdout)
import Text.Printf (printf)

sumToN :: Int -> Int
sumToN n = sum [1..n]

main = do
    putStr "Enter value for `n`: "
    hFlush stdout
    n <- getLine
    let ans = sumToN $ read n
    printf "The sum from 1 to %s is %d\n" n ans 
