module Deku.DOM.Elt.Dir where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Dir_

dir
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Dir_)
  -> seed
  -> Element lock payload
dir attributes seed = elementify "dir" attributes (plant seed)

dir_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
dir_ = dir empty

