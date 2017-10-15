module Rot13 where

import Data.Char

rot13 :: String -> String
rot13 = map (\c -> if (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')
                    then if isUpper c
                        then toEnum (fromEnum 'A' + (fromEnum c - fromEnum 'A' + 13) `mod` 26)
                        else toEnum (fromEnum 'a' + (fromEnum c - fromEnum 'a' + 13) `mod` 26)
                    else c)