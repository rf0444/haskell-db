{-# LANGUAGE TypeFamilies, QuasiQuotes, MultiParamTypeClasses, TemplateHaskell, OverloadedStrings #-}

import Database.Persist.Sqlite

import Model

main = withSqliteConn path $ runSqlConn $ do
  runMigration migrateAll
  insert $ User {
    userEmail = "hoge@hoge.jp",
    userPassword = Just "hoge"
  }
  return ()
 where
  path = "hogesql.sqlite3"

