module Codewars.Kata.Groups where

groupCheck :: String -> Bool
groupCheck s = chk s []

chk :: String -> String -> Bool
chk [] [] = True
chk (x:xs) [] = chk xs [x]
chk []  (_:_) = False
chk (x:xs) s@(y:ys)
    | any (== x) ['(','[','{'] = chk xs (x:s)
    | any (== x) [')',']','}'] = if p y x then chk xs ys else False
    | otherwise = chk xs s
  where
    p a b
      | a == '(' = b == ')'
      | a == '[' = b == ']'
      | a == '{' = b == '}'
      | otherwise = False