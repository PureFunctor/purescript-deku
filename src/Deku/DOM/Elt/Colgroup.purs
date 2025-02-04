module Deku.DOM.Elt.Colgroup where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Colgroup_

colgroup
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Colgroup_)
  -> seed
  -> Element lock payload
colgroup attributes seed = elementify "colgroup" attributes (plant seed)

colgroup_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
colgroup_ = colgroup empty

