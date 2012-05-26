{-# LANGUAGE TypeFamilies, TemplateHaskell, FlexibleContexts, GADTs #-}
module Model where

import Data.Text (Text)
import Database.Persist.Quasi
import Database.Persist.MySQL
import Database.Persist.TH

share [mkPersist sqlSettings, mkMigrate "migrateAll"]
    $(persistFileWith lowerCaseSettings "config/models")

