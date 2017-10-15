module Codewars.Kata.RemovNB where
      
removNb :: Integer -> [(Integer, Integer)]
removNb n = [(a,b) | a <- [(n `div` 2)..n], let (b,r) = divMod (sum - a) (a + 1), r == 0, a /= b]
    where sum = n * (n + 1) `div` 2