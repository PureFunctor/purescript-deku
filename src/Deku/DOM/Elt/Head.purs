module Deku.DOM.Elt.Head where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Head_

head
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Head_)
  -> seed
  -> Element lock payload
head attributes seed = elementify "head" attributes (plant seed)

head_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
head_ = head empty

