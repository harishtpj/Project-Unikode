-- Haskell program to print multiplication tables
-- Written by M.V.Harish Kumar on 11-07-2025
import System.IO (hFlush, stdout)
import Text.Printf (printf)

genTables :: Int -> Int -> IO ()
genTables n t = do
    printf "%d Tables\n\n" n
    mapM_ printLine [1..t]
    where
        printLine i = printf "%d x %d = %d\n" n i (n * i)

main = do
    putStr "Enter the no. to generate tables: "
    hFlush stdout
    n <- getLine

    putStr "Enter the no. till which to generate: "
    hFlush stdout
    t <- getLine

    genTables (read n) (read t)

