module Deku.DOM.Elt.Source where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Source_

source
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Source_)
  -> seed
  -> Element lock payload
source attributes seed = elementify "source" attributes (plant seed)

source_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
source_ = source empty

