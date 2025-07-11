-- Simple Greeter program in Haskell
-- Written by M.V.Harish Kumar on 11-07-2025
import System.IO (hFlush, stdout)

main = do
    putStr "Please enter your name: "
    hFlush stdout
    name <- getLine
    putStrLn $ "Hello, " ++ name ++ "! Hope you're fine"
