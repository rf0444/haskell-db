{-# LANGUAGE OverloadedStrings #-}

import Database.Persist.MySQL

import Model

main = withMySQLConn conf $ runSqlConn $ do
  runMigration migrateAll
  insert $ User {
    userEmail = "hoge@hoge.jp",
    userPassword = Just "hoge"
  }
  insert $ User "aa@bb.vv" (Just "aaa")
  return ()
 where
  conf = defaultConnectInfo {
    connectHost = "localhost",
    connectPort = 3306,
    connectUser = "hoge",
    connectPassword = "hoge",
    connectDatabase = "hoge"
  }

