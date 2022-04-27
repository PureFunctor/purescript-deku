module Deku.DOM.Elt.Center where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element)
import FRP.Event (Event)

data Center_

center
  :: forall seed lock payload
   . Plant seed (Event (Event (Child lock payload)))
  => Event (Attribute Center_)
  -> seed
  -> Element lock payload
center attributes seed = elementify "center" attributes (plant seed)

center_
  :: forall seed lock payload
   . Plant seed (Event (Event (Child lock payload)))
  => seed
  -> Element lock payload
center_ = center empty

