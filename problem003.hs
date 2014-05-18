largestFactor n 1 = floor n
largestFactor n x = if isIntValue (x / n) then 
                largestFactor n (x / n)
             else 
                largestFactor (n + 1) x


isIntValue x = x == (fromInteger $ floor x)

answer = largestFactor 2 600851475143  

main = print answer