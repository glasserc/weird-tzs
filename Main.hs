{-# LANGUAGE NamedFieldPuns  #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE OverloadedStrings #-}
module Main (main) where

import Data.Time.Zones.All
import Data.Maybe
import Data.Time.Zones
import Data.Time.LocalTime

main :: IO ()
main = do
    let brisbane = (fromJust $ tzByName "Australia/Brisbane" :: TZ)
        localtime = (read "2015-11-23 00:00:00" :: LocalTime)
    putStrLn "Local time:"
    print localtime
    putStrLn $ "reading date is " ++ show (localTimeToUTCTZ brisbane $ localtime)
