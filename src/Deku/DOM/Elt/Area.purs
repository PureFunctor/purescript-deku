module Deku.DOM.Elt.Area where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Area_

area
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Area_)
  -> seed
  -> Element lock payload
area attributes seed = elementify "area" attributes (plant seed)

area_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
area_ = area empty

