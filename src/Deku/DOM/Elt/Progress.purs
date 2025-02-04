module Deku.DOM.Elt.Progress where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Progress_

progress
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Progress_)
  -> seed
  -> Element lock payload
progress attributes seed = elementify "progress" attributes (plant seed)

progress_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
progress_ = progress empty

