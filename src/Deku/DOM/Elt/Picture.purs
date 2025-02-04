module Deku.DOM.Elt.Picture where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Picture_

picture
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Picture_)
  -> seed
  -> Element lock payload
picture attributes seed = elementify "picture" attributes (plant seed)

picture_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
picture_ = picture empty

