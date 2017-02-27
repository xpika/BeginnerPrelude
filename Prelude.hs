module Benner.Prelude (
    map, (++), concat, filter,
    head, last, tail, init, null, length, (!!),
    foldl,
    iterate, repeat, replicate, cycle,
    take, drop, splitAt, takeWhile, dropWhile, span, break,
    lines, words, unlines, unwords, reverse, and, or,
    any, all, elem, notElem, lookup,
    sum, product, maximum, minimum, concatMap, 
    zip, zip3, zipWith, zipWith3, unzip, unzip3,
    putChar, putStr, putStrLn, print,
    getChar, getLine, 
    readFile, writeFile, appendFile
)

import Prelude hiding ((>>=),return)
import qualified Control.Monad as CM

bindIO :: IO a -> (a -> IO b) -> IO b
bindIO = (>>=) 

returnIO :: a -> IO a
returnIO = return 

integerAdd :: Integer -> Integer 
integerAdd = (+)

fold :: (a -> b -> a) -> a -> [b] -> a
fold f z []     = z
fold f z (x:xs) = fold f (f z x) xs

map :: (a -> b) -> [a] -> [b]
map f (x:xs) = f x : map xs
map f [] = [] 

