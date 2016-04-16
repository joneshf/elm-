module Dashes (em, en) where

{-| Converts -- and --- to – and — respectively

@docs em, en
-}

import Regex exposing (HowMany(All), regex, replace)

{-| Converts --- to —
-}
em : String -> String
em =
  replace All (regex "---") (\_ -> "—")

{-| Converts -- to –
-}
en : String -> String
en =
  replace All (regex "--") (\_ -> "–")
