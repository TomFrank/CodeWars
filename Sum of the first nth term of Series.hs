module Codewars.Kata.NthSeries where
import Text.Printf
seriesSum :: Integer -> String
seriesSum n = printf "%.2f" (sum [1/x | x <- take (fromIntegral n) [1,4..]]::Float)::String