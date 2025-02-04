module Deku.DOM.Elt.Strike where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Strike_

strike
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Strike_)
  -> seed
  -> Element lock payload
strike attributes seed = elementify "strike" attributes (plant seed)

strike_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
strike_ = strike empty

