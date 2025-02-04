module Deku.DOM.Elt.Frame where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Frame_

frame
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Frame_)
  -> seed
  -> Element lock payload
frame attributes seed = elementify "frame" attributes (plant seed)

frame_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
frame_ = frame empty

