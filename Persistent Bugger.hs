{-# OPTIONS_GHC -fno-warn-tabs #-}
module Codewars.G.Persistence where
import Data.Char
persistence :: Int -> Int
persistence n
    | n < 10 = 0
    | otherwise = 1 + persistence (foldr (*) 1 (map digitToInt (show n)))