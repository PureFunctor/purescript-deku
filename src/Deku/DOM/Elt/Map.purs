module Deku.DOM.Elt.Map where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Map_

map
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Map_)
  -> seed
  -> Element lock payload
map attributes seed = elementify "map" attributes (plant seed)

map_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
map_ = map empty

