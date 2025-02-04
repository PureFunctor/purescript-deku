module Deku.DOM.Elt.Table where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Table_

table
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Table_)
  -> seed
  -> Element lock payload
table attributes seed = elementify "table" attributes (plant seed)

table_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
table_ = table empty

