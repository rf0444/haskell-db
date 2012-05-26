{-# LANGUAGE OverloadedStrings #-}

import Database.Persist.Postgresql

import Model

main = withPostgresqlConn conf $ runSqlConn $ do
  runMigration migrateAll
  insert $ User {
    userEmail = "hoge@hoge.jp",
    userPassword = Just "hoge"
  }
  insert $ User "aa@bb.vv" (Just "aaa")
  return ()
 where
  conf = "host=localhost port=5432 user=hoge dbname=hoge password=hoge"

