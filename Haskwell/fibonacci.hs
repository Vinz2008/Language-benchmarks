import Data.Time.Clock.POSIX

getTime :: IO Integer
getTime = round . (* 1000) <$> getPOSIXTime

for list action = mapM_ action list

fib :: Int -> Int
fib i | i <= 1 = i
fib n = fib (n - 1) + fib (n - 2)

main :: IO ()
main = do
    start <- getTime
    mapM_ (\i -> putStrLn $ show i ++ " " ++ show (fib i)) [1..50]
    end <- getTime
    let time = fromIntegral (end - start) / 1000
    putStrLn $ "Completed in: " ++ show time ++ "s"
