module Deku.DOM.Elt.Nav where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Nav_

nav
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Nav_)
  -> seed
  -> Element lock payload
nav attributes seed = elementify "nav" attributes (plant seed)

nav_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
nav_ = nav empty

