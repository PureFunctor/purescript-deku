module Deku.DOM.Elt.Dt where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Dt_

dt
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Dt_)
  -> seed
  -> Element lock payload
dt attributes seed = elementify "dt" attributes (plant seed)

dt_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
dt_ = dt empty

