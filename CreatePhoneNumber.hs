module CreatePhoneNumber where

createPhoneNumber :: [Int] -> String
createPhoneNumber x = cpn (concat (map show x))
    where cpn (a:b:c:d:e:f:g:h:i:j:[]) = '(' : a:b:c : ')' : ' ' : d:e:f : '-' : g:h:i:j :[]