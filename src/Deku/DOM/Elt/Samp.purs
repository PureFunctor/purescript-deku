module Deku.DOM.Elt.Samp where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Samp_

samp
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Samp_)
  -> seed
  -> Element lock payload
samp attributes seed = elementify "samp" attributes (plant seed)

samp_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
samp_ = samp empty

