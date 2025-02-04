module Deku.DOM.Elt.Del where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Del_

del
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Del_)
  -> seed
  -> Element lock payload
del attributes seed = elementify "del" attributes (plant seed)

del_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
del_ = del empty

