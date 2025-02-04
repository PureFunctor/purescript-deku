module Deku.DOM.Elt.Fieldset where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Fieldset_

fieldset
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Fieldset_)
  -> seed
  -> Element lock payload
fieldset attributes seed = elementify "fieldset" attributes (plant seed)

fieldset_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
fieldset_ = fieldset empty

