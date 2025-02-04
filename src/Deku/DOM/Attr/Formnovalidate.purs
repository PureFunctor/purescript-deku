module Deku.DOM.Attr.Formnovalidate where
import Deku.DOM.Elt.Button(Button_)
import Deku.DOM.Elt.Input(Input_)
import Deku.Attribute (class Attr, prop', unsafeAttribute)
data Formnovalidate = Formnovalidate
instance Attr Button_ Formnovalidate String where
  attr Formnovalidate value = unsafeAttribute { key: "formnovalidate", value: prop' value }

instance Attr Input_ Formnovalidate String where
  attr Formnovalidate value = unsafeAttribute { key: "formnovalidate", value: prop' value }
