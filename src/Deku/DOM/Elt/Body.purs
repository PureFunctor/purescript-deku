module Deku.DOM.Elt.Body where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Body_

body
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Body_)
  -> seed
  -> Element lock payload
body attributes seed = elementify "body" attributes (plant seed)

body_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
body_ = body empty

