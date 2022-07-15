module Kwap.Concept
  ( Manifest(..)
  , Decl(..)
  , decls
  , declOfRecord
  , pathString
  , identString
  , titleString
  , path
  , ident
  , title
  , Path(..)
  , Ident(..)
  , Title(..)
  ) where

import Prelude

newtype Ident = Ident String

derive newtype instance showIdent :: Show Ident
derive newtype instance eqIdent :: Eq Ident
derive newtype instance ordIdent :: Ord Ident
derive newtype instance semiIdent :: Semigroup Ident
derive newtype instance monoidIdent :: Monoid Ident

identString :: Ident -> String
identString (Ident s) = s

newtype Path = Path String

derive newtype instance showPath :: Show Path
derive newtype instance eqPath :: Eq Path
derive newtype instance ordPath :: Ord Path
derive newtype instance semiPath :: Semigroup Path
derive newtype instance monoidPath :: Monoid Path

pathString :: Path -> String
pathString (Path s) = s

newtype Title = Title String

derive newtype instance showTitle :: Show Title
derive newtype instance eqTitle :: Eq Title
derive newtype instance ordTitle :: Ord Title
derive newtype instance semiTitle :: Semigroup Title
derive newtype instance monoidTitle :: Monoid Title

titleString :: Title -> String
titleString (Title s) = s

newtype Decl = Decl
  { path :: Path
  , title :: Title
  , ident :: Ident
  }

derive newtype instance eqOne :: Eq Decl
derive newtype instance showOne :: Show Decl

declOfRecord
  :: { path :: String, title :: String, ident :: String } -> Decl
declOfRecord { path: p, title: t, ident: a } = Decl
  { path: Path p, title: Title t, ident: Ident a }

path :: Decl -> Path
path (Decl { path: p }) = p

title :: Decl -> Title
title (Decl { title: t }) = t

ident :: Decl -> Ident
ident (Decl { ident: i }) = i

newtype Manifest = Manifest (Array Decl)

derive newtype instance eqManifest :: Eq Manifest
derive newtype instance showManifest :: Show Manifest

decls :: Manifest -> Array Decl
decls (Manifest a) = a
