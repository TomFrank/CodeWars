module LongestCommonSubsequence where

lcs :: String -> String -> String
lcs a b = lcs' (reverse a) (reverse b)

lcs' :: String -> String -> String
lcs' [] _ = []
lcs' _ [] = []
lcs' (x:xs) (y:ys)
    | x == y = lcs' xs ys ++ [x]
    | otherwise = if length lx > length ly then lx else ly
  where
    lx = lcs' xs (y:ys)
    ly = lcs' (x:xs) ys