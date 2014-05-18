threeDigitNums = [999,998..100]

nums = concat $ map  (\x -> (map (*x) threeDigitNums)) threeDigitNums

isPalindrome :: String -> Bool
isPalindrome s = s == reverse s

answer = foldl1 (max) $ filter (isPalindrome . show) nums

main = print answer