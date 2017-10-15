module Codewars.Kata.Vowel where

getCount :: String -> Int
getCount s = length [c | c <- s, c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u']