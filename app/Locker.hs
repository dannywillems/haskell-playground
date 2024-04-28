module Locker where

import qualified Data.Map

data LockerState = Taker | Free
type LockerMap = Data.Map.Map Int (LockerState, String)

lockerLookup :: LockerMap -> Int -> Maybe (LockerState, String)
lockerLookup lmap lockerNumber = Data.Map.lookup lockerNumber lmap
