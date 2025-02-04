module Deku.DOM.Elt.Span where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Span_

span
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Span_)
  -> seed
  -> Element lock payload
span attributes seed = elementify "span" attributes (plant seed)

span_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
span_ = span empty

