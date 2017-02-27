import Prelude hiding ((>>=),return)
import qualified Control.Monad as CM

bindIO :: IO a -> (a -> IO b) -> IO b
bindIO = (>>=) 

returnIO :: a -> IO a
returnIO = return 

addIntegers :: Integer -> Integer 
addIntegers = (+)
