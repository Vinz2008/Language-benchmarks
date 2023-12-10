import Data.Time.Clock.POSIX

getTime :: IO Integer
getTime = round . (* 1000) <$> getPOSIXTime

main :: IO ()
main = do
    start <- getTime
    let num = 2000000000
    mapM_ (\i -> if num `mod` i == 0
               then putStrLn $ show i ++ " is a factor of " ++ show num
               else return ()) [1..num]
    end <- getTime
    let time = fromIntegral (end - start) / 1000
    putStrLn $ "Completed in: " ++ show time ++ "s"