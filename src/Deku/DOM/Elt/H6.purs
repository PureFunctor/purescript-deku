module Deku.DOM.Elt.H6 where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data H6_

h6
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute H6_)
  -> seed
  -> Element lock payload
h6 attributes seed = elementify "h6" attributes (plant seed)

h6_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
h6_ = h6 empty

