{-# LANGUAGE TypeFamilies, TemplateHaskell, FlexibleContexts, GADTs #-}
module Model where

import Data.Text (Text)
import Database.Persist.Quasi
import Database.Persist.MongoDB
import Database.Persist.TH
import Language.Haskell.TH.Syntax

share [mkPersist MkPersistSettings { mpsBackend = ConT ''Action }, mkMigrate "migrateAll"]
    $(persistFileWith lowerCaseSettings "config/models")

