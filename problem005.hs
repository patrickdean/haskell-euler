gcd' :: (Integral a) => a -> a -> a
gcd' a 0 = a
gcd' a b = gcd' b (a `mod` b)

lcm' :: (Integral a) => a -> a -> a
lcm' a b = (a * b) `quot` (gcd' a b)

answer = foldl1 (lcm') [1..20]

main = print answer