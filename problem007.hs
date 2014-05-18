isPrime :: (Integral a) => a -> Bool
isPrime 1 = False
isPrime 2 = True
isPrime 3 = True
isPrime n = not $ foldl1 (||) $ map (\x -> (n `mod` x == 0)) (nums n)

nums :: (Integral a) => a -> [a]
nums n = [2..(floor $ sqrt $ fromIntegral n)]

answer = last $ take 10001 $ filter (isPrime) [1..]

main = print answer