{-# LANGUAGE TypeFamilies, QuasiQuotes, MultiParamTypeClasses, TemplateHaskell, OverloadedStrings #-}

import Database.Persist
import Database.Persist.MongoDB

import Model

main = withMongoDBConn dbname hostname $ runMongoDBConn master $ do
  return ()
 where
  hostname = "localhost"
  dbname = "test"

