module Deku.DOM.Elt.Rt where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Rt_

rt
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Rt_)
  -> seed
  -> Element lock payload
rt attributes seed = elementify "rt" attributes (plant seed)

rt_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
rt_ = rt empty

