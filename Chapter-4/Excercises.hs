module Exercises4 where

 isPalindrome :: (Eq a) => [a] -> Bool
 isPalindrome x = reverse x == x 

 myAbs :: Integer -> Integer
 myAbs x = if x < 0 then (-1)*x else x