import Data.Time.Clock.POSIX
import Data.Int
import Data.Word
import Control.Monad

getTime :: IO Word64
getTime = round . (* 1000) <$> getPOSIXTime


get_factors :: Int64 -> IO ()
get_factors num = go 1
    where
        go :: Int64 -> IO ()
        go !i 
            | i > num = pure ()
            | otherwise = do
                when (num `mod` i == 0) $
                    putStrLn (show i ++ " is a factor of " ++ show num)
                go (i + 1)

main :: IO ()
main = do
    let num = 2000000000
    start <- getTime
    get_factors num
    end <- getTime

    let elapsed = fromIntegral (end - start) / 1000 :: Double
    putStrLn $ "Completed in: " ++ show elapsed ++ "s"