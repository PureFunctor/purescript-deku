module Deku.DOM.Elt.U where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data U_

u
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute U_)
  -> seed
  -> Element lock payload
u attributes seed = elementify "u" attributes (plant seed)

u_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
u_ = u empty

