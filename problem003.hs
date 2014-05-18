largestFactor :: (Integral a) => a -> a -> a
largestFactor n 1 = n
largestFactor n x = if x `mod` n == 0 then 
                largestFactor n (x `quot` n)
             else 
                largestFactor (n + 1) x

answer = largestFactor 2 600851475143  

main = print answer