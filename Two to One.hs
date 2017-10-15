module Codewars.G964.Longest where
import Data.List (sort)
longest :: [Char] -> [Char] -> [Char]
longest a b = lg (sort (a ++ b))

lg :: String -> String
lg [] = []
lg (x:xs) = (if elem x xs then "" else [x]) ++ lg xs