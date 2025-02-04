module Deku.DOM.Elt.Textarea where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Textarea_

textarea
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Textarea_)
  -> seed
  -> Element lock payload
textarea attributes seed = elementify "textarea" attributes (plant seed)

textarea_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
textarea_ = textarea empty

