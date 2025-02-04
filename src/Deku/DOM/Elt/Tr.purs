module Deku.DOM.Elt.Tr where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Tr_

tr
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Tr_)
  -> seed
  -> Element lock payload
tr attributes seed = elementify "tr" attributes (plant seed)

tr_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
tr_ = tr empty

