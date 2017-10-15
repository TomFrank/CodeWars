module Codewars.BuildTower where

buildTower :: Int -> [String]
buildTower n = [(sp x++ st x++ sp x) | x <- [1..n]]
    where sp x = replicate (n-x) ' '
          st x = replicate (2*x-1) '*'