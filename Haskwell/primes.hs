import Data.Time.Clock.POSIX
import Foreign.Marshal.Array
import Foreign.Ptr
import Foreign.Storable

getTime :: IO Integer
getTime = round . (* 1000) <$> getPOSIXTime

countFactors :: Int -> Int
countFactors n = length [x | x <- [1..n], n `mod` x == 0]

findPrimes :: Int -> IO [Int]
findPrimes limit = go 0 0 []
  where
    go i primesLength primes
      | i >= limit = return primes
      | factors == 2 = do
          let newPrimes = primes ++ [i]
          go (i + 1) (primesLength + 1) newPrimes
      | otherwise = go (i + 1) primesLength primes
      where
        factors = countFactors i

format x = "" ++ show x ++ " "

main :: IO ()
main = do
    start <- getTime
    primes <- findPrimes 15000
    mapM_ (putStr . format) primes
    putStr "\n"
    end <- getTime
    let time = fromIntegral (end - start) / 1000
    putStrLn $ "Completed in: " ++ show time ++ "s"