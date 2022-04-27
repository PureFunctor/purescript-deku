module Deku.DOM.Elt.Label where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element)
import FRP.Event (Event)

data Label_

label
  :: forall seed lock payload
   . Plant seed (Event (Event (Child lock payload)))
  => Event (Attribute Label_)
  -> seed
  -> Element lock payload
label attributes seed = elementify "label" attributes (plant seed)

label_
  :: forall seed lock payload
   . Plant seed (Event (Event (Child lock payload)))
  => seed
  -> Element lock payload
label_ = label empty

