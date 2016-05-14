module Player where

import Data.Aeson (Object)
import System.Random

version :: String
version = "Do something, anything"

betRequest :: Object -> IO Int
betRequest gameState = do
  value <- randomIO
  let
    bet :: Int
    bet = value `mod` 100
    reply = if abs bet < 20 then 100000 else 0
  return reply

showdown :: Object -> IO ()
showdown gameState = return ()

