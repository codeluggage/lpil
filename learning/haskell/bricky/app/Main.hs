{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}

module Main where

import Control.Concurrent (forkIO, threadDelay)
import Control.Monad (forever, void)
import Data.Monoid
import qualified Graphics.Vty as V
import Lens.Micro ((%~), (&), (.~), (^.))
import Lens.Micro.TH (makeLenses)

import Brick.AttrMap (attrMap)
import Brick.BChan
import Brick.Main
       (App(..), continue, customMain, halt, showFirstCursor)
import Brick.Types (BrickEvent(..), EventM, Next, Widget)
import Brick.Widgets.Core ((<=>), str)

data CustomEvent =
  Counter
  deriving (Show)

data St = St
  { _stLastBrickEvent :: Maybe (BrickEvent () CustomEvent)
  , _stCounter :: Int
  }

makeLenses ''St

drawUI :: St -> [Widget ()]
drawUI st = [a]
  where
    a =
      str ("Last event: " <> show (st ^. stLastBrickEvent)) <=>
      str ("Counter value is: " <> show (st ^. stCounter))

appEvent :: St -> BrickEvent () CustomEvent -> EventM () (Next St)
appEvent st e =
  case e of
    VtyEvent (V.EvKey V.KEsc []) -> halt st
    VtyEvent _ -> continue $ st & stLastBrickEvent .~ Just e
    AppEvent Counter ->
      continue $ st & stCounter %~ (+ 1) & stLastBrickEvent .~ Just e
    _ -> continue st

initialState :: St
initialState = St {_stLastBrickEvent = Nothing, _stCounter = 0}

theApp :: App St CustomEvent ()
theApp =
  App
  { appDraw = drawUI
  , appChooseCursor = showFirstCursor
  , appHandleEvent = appEvent
  , appStartEvent = return
  , appAttrMap = const $ attrMap V.defAttr []
  }

main :: IO ()
main = do
  chan <- newBChan 10
  forkIO $
    forever $ do
      writeBChan chan Counter
      threadDelay 1000000
  void $ customMain (V.mkVty V.defaultConfig) (Just chan) theApp initialState
