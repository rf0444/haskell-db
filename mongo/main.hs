{-# LANGUAGE TypeFamilies, QuasiQuotes, MultiParamTypeClasses, TemplateHaskell, OverloadedStrings #-}

import Database.Persist
import Database.Persist.MongoDB

import Model

main = withMongoDBConn dbname hostname $ runMongoDBConn master $ do
  insert $ UserAuth {
    userAuthEmail = "hoge@hoge.jp",
    userAuthPassword = Just "hoge",
    userAuthVerkey = Just "hoge",
    userAuthVerified = True
  }
  return ()
 where
  hostname = "localhost"
  dbname = "test"

