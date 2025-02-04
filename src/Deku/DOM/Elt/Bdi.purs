module Deku.DOM.Elt.Bdi where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Bdi_

bdi
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Bdi_)
  -> seed
  -> Element lock payload
bdi attributes seed = elementify "bdi" attributes (plant seed)

bdi_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
bdi_ = bdi empty

