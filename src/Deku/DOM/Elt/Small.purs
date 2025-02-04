module Deku.DOM.Elt.Small where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Small_

small
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Small_)
  -> seed
  -> Element lock payload
small attributes seed = elementify "small" attributes (plant seed)

small_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
small_ = small empty

