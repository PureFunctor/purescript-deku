module Deku.DOM.Elt.Title where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Title_

title
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Title_)
  -> seed
  -> Element lock payload
title attributes seed = elementify "title" attributes (plant seed)

title_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
title_ = title empty

