{-# LANGUAGE TypeFamilies, QuasiQuotes, MultiParamTypeClasses, TemplateHaskell, OverloadedStrings, FlexibleContexts, GADTs #-}
module Model where

import Data.Text (Text)
import Database.Persist.Quasi
import Database.Persist.Sqlite
import Database.Persist.TH

share [mkPersist sqlSettings, mkMigrate "migrateAll"]
    $(persistFileWith lowerCaseSettings "config/models")

