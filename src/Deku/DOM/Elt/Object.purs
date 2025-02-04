module Deku.DOM.Elt.Object where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Object_

object
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Object_)
  -> seed
  -> Element lock payload
object attributes seed = elementify "object" attributes (plant seed)

object_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
object_ = object empty

