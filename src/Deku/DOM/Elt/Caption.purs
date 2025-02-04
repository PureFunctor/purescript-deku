module Deku.DOM.Elt.Caption where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Caption_

caption
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Caption_)
  -> seed
  -> Element lock payload
caption attributes seed = elementify "caption" attributes (plant seed)

caption_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
caption_ = caption empty

