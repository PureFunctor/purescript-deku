module Deku.DOM.Attr.Cite where
import Deku.DOM.Elt.Blockquote(Blockquote_)
import Deku.DOM.Elt.Del(Del_)
import Deku.DOM.Elt.Ins(Ins_)
import Deku.DOM.Elt.Q(Q_)
import Deku.Attribute (class Attr, prop', unsafeAttribute)
data Cite = Cite
instance Attr Blockquote_ Cite String where
  attr Cite value = unsafeAttribute { key: "cite", value: prop' value }

instance Attr Del_ Cite String where
  attr Cite value = unsafeAttribute { key: "cite", value: prop' value }

instance Attr Ins_ Cite String where
  attr Cite value = unsafeAttribute { key: "cite", value: prop' value }

instance Attr Q_ Cite String where
  attr Cite value = unsafeAttribute { key: "cite", value: prop' value }
