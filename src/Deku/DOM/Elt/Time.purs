module Deku.DOM.Elt.Time where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Time_

time
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Time_)
  -> seed
  -> Element lock payload
time attributes seed = elementify "time" attributes (plant seed)

time_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
time_ = time empty

