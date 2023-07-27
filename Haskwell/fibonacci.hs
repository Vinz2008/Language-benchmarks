import Data.Time.Clock
import Text.Printf

diffTimeToSeconds :: DiffTime -> Integer
diffTimeToSeconds = floor . toRational

for list action = mapM_ action list

fib :: Int -> Int
fib i | i <= 1 = i
fib n = fib (n - 1) + fib (n - 2)

main :: IO ()
main = do
    let start = diffTimeToSeconds
    for [0..20] (\ i -> do
        print $ i
        print $ fib i
        )
    printf "Completed in : %.3fs" start
