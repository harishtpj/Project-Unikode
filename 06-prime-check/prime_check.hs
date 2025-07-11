-- Haskell program to check if given number is prime
-- Written by M.V.Harish Kumar on 11-07-2025
import System.IO (hFlush, stdout)

isPrime :: Int -> Bool
isPrime n
    | n < 2 = False
    | n == 2 = True
    | otherwise = all notDiv [2..lim]
    where
        notDiv i = n `rem` i /= 0
        lim = floor . sqrt . fromIntegral $ n

main = do
    putStrLn "Prime number checker\n"
    putStr "Enter a number: "
    hFlush stdout
    n <- getLine
    if isPrime $ read n then
        putStrLn $ n ++ " is a Prime number"
    else
        putStrLn $ n ++ " is NOT a Prime Number"
