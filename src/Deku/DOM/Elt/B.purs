module Deku.DOM.Elt.B where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data B_

b
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute B_)
  -> seed
  -> Element lock payload
b attributes seed = elementify "b" attributes (plant seed)

b_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
b_ = b empty

