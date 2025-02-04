module Deku.DOM.Elt.Link where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Link_

link
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Link_)
  -> seed
  -> Element lock payload
link attributes seed = elementify "link" attributes (plant seed)

link_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
link_ = link empty

