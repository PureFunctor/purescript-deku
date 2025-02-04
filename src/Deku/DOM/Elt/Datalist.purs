module Deku.DOM.Elt.Datalist where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Datalist_

datalist
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Datalist_)
  -> seed
  -> Element lock payload
datalist attributes seed = elementify "datalist" attributes (plant seed)

datalist_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
datalist_ = datalist empty

