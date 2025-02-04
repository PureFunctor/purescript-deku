module Deku.DOM.Elt.A where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data A_

a
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute A_)
  -> seed
  -> Element lock payload
a attributes seed = elementify "a" attributes (plant seed)

a_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
a_ = a empty

