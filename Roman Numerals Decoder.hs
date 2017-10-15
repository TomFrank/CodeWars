module Roman where

solution :: String -> Int
solution = rnd
    where
        rnd ('I':'V':xs) = 4   + rnd xs
        rnd ('I':'X':xs) = 9   + rnd xs
        rnd ('X':'L':xs) = 40  + rnd xs
        rnd ('X':'C':xs) = 90  + rnd xs
        rnd ('C':'D':xs) = 400 + rnd xs
        rnd ('C':'M':xs) = 900 + rnd xs
        rnd ('I':xs)     = 1   + rnd xs
        rnd ('V':xs)     = 5   + rnd xs
        rnd ('X':xs)     = 10  + rnd xs
        rnd ('L':xs)     = 50  + rnd xs
        rnd ('C':xs)     = 100 + rnd xs
        rnd ('D':xs)     = 500 + rnd xs
        rnd ('M':xs)     = 1000+ rnd xs
        rnd []           = 0