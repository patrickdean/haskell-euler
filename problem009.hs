isPythagorean :: (Eq a, Num a) => a -> a-> a-> Bool
isPythagorean a b c = (a^2 + b^2) == c^2

findPythagoreanTriplets m = head [a * b * c | a <- [(m-2),(m-3)..1], b <- [a,(a-1)..1], c <- [m - a - b], isPythagorean a b c ]

answer = findPythagoreanTriplets 1000

main = print answer