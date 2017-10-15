module Codewars.Kata.FindOdd where
import Data.Bits
-- | Given a list, find the [Int] that appears an 
--   odd number of times. The tests will always
--   provide such a number, and the list will
--   always contain at least one element.
findOdd :: [Int] -> Int
findOdd [] = 0
findOdd (x:xs) = xor x (findOdd xs)