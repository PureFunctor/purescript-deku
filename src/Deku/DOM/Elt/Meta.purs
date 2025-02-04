module Deku.DOM.Elt.Meta where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Meta_

meta
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Meta_)
  -> seed
  -> Element lock payload
meta attributes seed = elementify "meta" attributes (plant seed)

meta_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
meta_ = meta empty

