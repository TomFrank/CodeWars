module Codewars.Kata.Spinning where

spinWords :: String -> String
spinWords str = unwords [if length s < 5 then s else reverse s | s <- words str]