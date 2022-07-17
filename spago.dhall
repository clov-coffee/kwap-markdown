{ name = "kwap-rs"
, dependencies =
  [ "aff"
  , "argonaut-core"
  , "arrays"
  , "bifunctors"
  , "codec-argonaut"
  , "control"
  , "effect"
  , "either"
  , "exceptions"
  , "foldable-traversable"
  , "maybe"
  , "parsing"
  , "prelude"
  , "spec"
  , "strings"
  , "transformers"
  , "tuples"
  , "unordered-collections"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
