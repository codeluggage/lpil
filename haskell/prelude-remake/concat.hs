module Concat where

import Prelude hiding (concat)

concat :: [[a]] -> [a]
concat = foldr1 (++)
