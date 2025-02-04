module Deku.DOM.Elt.Q where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Q_

q
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Q_)
  -> seed
  -> Element lock payload
q attributes seed = elementify "q" attributes (plant seed)

q_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
q_ = q empty

