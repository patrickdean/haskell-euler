isPalindrome :: String -> Bool
isPalindrome s = s == reverse s

answer = maximum [a * b | a <- [999,998..100], b <- [999,998..100], isPalindrome $ show (a*b)]

main = print answer