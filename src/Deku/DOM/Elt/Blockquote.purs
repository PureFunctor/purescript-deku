module Deku.DOM.Elt.Blockquote where

import Control.Plus (empty)
import Deku.Attribute (Attribute)
import Deku.Control (elementify, class Plant, plant)
import Deku.Core (Child, Element, Domable)
import FRP.Event (Event)

data Blockquote_

blockquote
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => Event (Attribute Blockquote_)
  -> seed
  -> Element lock payload
blockquote attributes seed = elementify "blockquote" attributes (plant seed)

blockquote_
  :: forall seed lock payload
   . Plant seed (Domable lock payload)
  => seed
  -> Element lock payload
blockquote_ = blockquote empty

