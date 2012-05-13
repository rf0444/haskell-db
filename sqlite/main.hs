{-# LANGUAGE OverloadedStrings #-}

import Database.Persist.Sqlite

import Model

main = withSqliteConn path $ runSqlConn $ do
  runMigration migrateAll
  insert $ User {
    userEmail = "hoge@hoge.jp",
    userPassword = Just "hoge"
  }
  insert $ User "aa@bb.vv" (Just "aaa")
  return ()
 where
  path = "hogesql.sqlite3"

