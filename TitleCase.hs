module TitleCase (titleCase) where
import Data.Char

titleCase :: String -> String -> String
titleCase _     ""    = ""
titleCase minor title = unwords $  cp (head lt) : (map tt $ tail lt)
    where lt = words $ map toLower title
          lm = words $ map toLower minor
          tt = \w -> if elem w lm then w else cp w
          cp s = toUpper (head s) : tail s