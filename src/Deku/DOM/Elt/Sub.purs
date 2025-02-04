module Deku.DOM.Elt.Sub where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Sub_

sub
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Sub_)
  -> seed
  -> Element lock payload
sub attributes seed = elementify "sub" attributes (plant seed)

sub_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
sub_ = sub empty

