module Deku.DOM.Elt.Summary where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Summary_

summary
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Summary_)
  -> seed
  -> Element lock payload
summary attributes seed = elementify "summary" attributes (plant seed)

summary_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
summary_ = summary empty

