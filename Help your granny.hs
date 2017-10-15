module Codewars.Kata.Granny where
import qualified Data.HashMap.Strict as H

tour :: [String] -> [(String, String)] -> [(String, Double)] -> Integer
tour friends fTowns distTable = floor $ sfd (head friends) + ds friends
    where
        ft   = H.fromList fTowns
        dt   = H.fromList distTable
        fd f = dt H.! (ft H.! f)
        sfd f = if H.member f ft then fd f else 0
        ds :: [String] -> Double
        ds []       = 0.0
        ds [x]      = sfd x
        ds (x:y:xs) = (if H.member y ft then sqrt (fd y ^ 2 - fd x ^ 2) else sfd x) + ds (y:xs)