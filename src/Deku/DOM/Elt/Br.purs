module Deku.DOM.Elt.Br where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Br_

br
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Br_)
  -> seed
  -> Element lock payload
br attributes seed = elementify "br" attributes (plant seed)

br_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
br_ = br empty

