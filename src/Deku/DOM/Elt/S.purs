module Deku.DOM.Elt.S where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data S_

s
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute S_)
  -> seed
  -> Element lock payload
s attributes seed = elementify "s" attributes (plant seed)

s_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
s_ = s empty

