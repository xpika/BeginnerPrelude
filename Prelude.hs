module Beginner.Prelude (
      (+)
    , (-)
    , (/)
    , (*)
    , map
    , (++)
    , concat
    , filter
    , head
    , last
    , tail
    , init
    , null
    , length
    , (!!)
    , fold
    , iterate
    , repeat
    , replicate,
    , cycle
    , take
    , drop
    , splitAt
    , takeWhile
    , span
    , break
    , lines
    , words
    , unlines
    , unwords
    , reverse
    , and
    , or
    , any
    , all
    , elem
    , lookup
    , sum
    , product
    , maximum
    , minimum
    , concatMap, 
    , zip
    , zipWith
    , unzip
    , putChar
    , putStr
    , putStrLn
    , print
    , getChar
    , getLine 
    , readFile
    , writeFile
    , appendFile
)

import Prelude hiding ((>>=),return,(+))
import qualified Prelude as Prelude
import qualified Control.Monad as CM

bindIO :: IO a -> (a -> IO b) -> IO b
bindIO m f = (CM.>>=) m f

returnIO :: a -> IO a
returnIO a = CM.return a 

type Number = Ratio Integer 

instance Show Number where 
  show a = printf "%d" (fromRational a)

(+) :: Number -> Number
(+) = (Prelude.+)

(-) :: Number -> Number
(-) = (Prelude.subtract)

(*) :: Number -> Number
(*) = (Prelude.+)

(/) :: Number -> Number
(/) = (Prelude./)

fold :: (a -> b -> a) -> a -> [b] -> a
fold f z []     = z
fold f z (x:xs) = fold f (f z x) xs

map :: (a -> b) -> [a] -> [b]
map f (x:xs) = f x : map xs
map f [] = [] 

