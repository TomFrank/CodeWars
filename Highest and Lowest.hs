module Kata (highAndLow) where

highAndLow :: String -> String
highAndLow s = unwords (map show [maximum (map read (words s))::Int, minimum (map read (words s))::Int])