{ name = "purescript-deku"
, dependencies =
  [ "avar"
  , "canvas"
  , "control"
  , "effect"
  , "either"
  , "event"
  , "exceptions"
  , "filterable"
  , "foldable-traversable"
  , "foreign-object"
  , "maybe"
  , "newtype"
  , "prelude"
  , "profunctor"
  , "random"
  , "record"
  , "refs"
  , "safe-coerce"
  , "sized-vectors"
  , "tuples"
  , "type-equality"
  , "unsafe-coerce"
  , "variant"
  , "web-dom"
  , "web-events"
  , "web-html"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
