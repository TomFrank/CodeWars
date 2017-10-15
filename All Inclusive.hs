module Codewars.G964.Rotations where
rotation :: String -> String
rotation s = tail s ++ [head s]

rotations :: String -> [String]
rotations s = take (length s) (iterate rotation s)

isSub :: Eq a => [a] -> [a] -> Bool
isSub s1 s2 = all (\n -> elem n s2) s1

containAllRots :: String -> [String] -> Bool
containAllRots str = isSub (rotations str)