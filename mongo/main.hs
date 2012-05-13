{-# LANGUAGE OverloadedStrings #-}

import Database.Persist.MongoDB
import Model

main = withMongoDBConn dbname hostname $ runMongoDBConn master $ do
  insert $ User {
    userEmail = "hoge@hoge.jp",
    userPassword = Just "hoge"
  }
  return ()
 where
  hostname = "localhost"
  dbname = "test"

