module Deku.DOM.Attr.Loading  where
import Deku.DOM.Elt.Img(Img_)
import Deku.DOM.Elt.Iframe(Iframe_)
import Deku.Attribute (class Attr, prop', unsafeAttribute)
data Loading  = Loading 
instance Attr Img_ Loading  String where
  attr Loading  value = unsafeAttribute { key: "loading ", value: prop' value }

instance Attr Iframe_ Loading  String where
  attr Loading  value = unsafeAttribute { key: "loading ", value: prop' value }
