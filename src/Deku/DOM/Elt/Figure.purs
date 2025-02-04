module Deku.DOM.Elt.Figure where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Figure_

figure
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Figure_)
  -> seed
  -> Element lock payload
figure attributes seed = elementify "figure" attributes (plant seed)

figure_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
figure_ = figure empty

