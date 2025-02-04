module Deku.DOM.Elt.Noscript where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Noscript_

noscript
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Noscript_)
  -> seed
  -> Element lock payload
noscript attributes seed = elementify "noscript" attributes (plant seed)

noscript_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
noscript_ = noscript empty

