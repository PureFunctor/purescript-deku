module Deku.DOM.Elt.P where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data P_

p
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute P_)
  -> seed
  -> Element lock payload
p attributes seed = elementify "p" attributes (plant seed)

p_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
p_ = p empty

