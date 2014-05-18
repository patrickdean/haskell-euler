generateFibonacci fibs@(a:b:_) 
    | a < 4000000 = generateFibonacci(a + b:fibs)
    | otherwise   = fibs

fibonacci = generateFibonacci [1,0]    

answer = sum $ filter (even) fibonacci

main = print answer