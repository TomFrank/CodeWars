module Kata where

averages :: Maybe [Double] -> [Double]
averages Nothing = []
averages (Just a) = case a of
    [] -> []
    [_] -> []
    (x:y:xs) -> (x + y) / 2 : averages (Just (y : xs))