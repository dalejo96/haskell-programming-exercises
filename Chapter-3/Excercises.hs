module Exercises3 where

 addExclamation :: String -> String
 addExclamation x = x ++ "!"

 take4Chart :: String -> Char
 take4Chart x = x !! 4

 drop9Charts :: String -> String
 drop9Charts = drop 9

 thirdLetter :: String -> Char
 thirdLetter x = x !! 2

 getLetterFromFixedString :: Int -> Char
 getLetterFromFixedString x = "Curry is awesome" !! (x-1)

 rvrs :: String -> String
 rvrs x = drop 9 x ++" "++ drop 6 (take 8 x) ++" "++ take 5 x