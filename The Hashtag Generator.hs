module Codewars.Kata.Hashtag where
import Data.Char
generateHashtag :: String -> Maybe String
generateHashtag s = if length s > 140 || length ws == 0
                    then Nothing
                    else Just ('#' : (concat $ map (\w -> toUpper (head w) : tail w) (words s)))
            where ws = words s