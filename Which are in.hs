module Codewars.Kata.Which where
import Data.List

isSubStr :: String -> String -> Bool
isSubStr [] _ = True
isSubStr _ [] = False
isSubStr s1 s2 = (length s1 <= length s2) && (all (\(a, b) -> a == b) (zip s1 s2) || isSubStr s1 (tail s2))

toUnique :: Eq a => [a] -> [a]
toUnique [] = []
toUnique [x] = [x]
toUnique (x:y:xs) = if x /= y then x : toUnique (y:xs) else toUnique (y:xs)

inArray :: [String] -> [String] -> [String]
inArray a1 a2 = toUnique $ sort st
    where st = [s | s <- a1, any (isSubStr s) a2]