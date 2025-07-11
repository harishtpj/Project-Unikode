-- Haskell program to calculate factorial
-- Written by M.V.Harish Kumar on 11-07-2025
import System.IO (hFlush, stdout)
import Text.Printf (printf)

fact :: Integer -> Integer
fact n | n < 1 = 1
       | otherwise = n * fact (n - 1)

main = do
   putStr "Enter value for `n`: "
   hFlush stdout
   input <- getLine
   let n = read input :: Integer
       ans = fact n
   printf "%d! = %d\n" n ans
