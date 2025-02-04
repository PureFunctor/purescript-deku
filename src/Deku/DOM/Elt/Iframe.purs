module Deku.DOM.Elt.Iframe where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Iframe_

iframe
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Iframe_)
  -> seed
  -> Element lock payload
iframe attributes seed = elementify "iframe" attributes (plant seed)

iframe_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
iframe_ = iframe empty

