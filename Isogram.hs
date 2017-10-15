module Isogram where
import Data.Char
isIsogram :: String -> Bool
isIsogram [] = True
isIsogram (s:sx) = notElem (toLower s) sx && notElem (toUpper s) sx && isIsogram sx