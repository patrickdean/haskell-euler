import Data.Char

answer = sum $ map (digitToInt) $ show $ 2^1000

main = print answer