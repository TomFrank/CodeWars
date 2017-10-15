module Codewars.Kata.DigPow where

digpow :: Integer -> Integer -> Integer
digpow n p = if snd dm == 0 then fst dm else -1
    where dm = (powSum p (itoa n)) `divMod` n

itoa :: Integer -> [Integer]
itoa n
    | n < 10 = [n]
    | otherwise = itoa (n `div` 10) ++ [n `mod` 10]

powSum :: Integer -> [Integer] -> Integer
powSum p []     = 0
powSum p (x:xs) = x ^ p + powSum (p+1) xs