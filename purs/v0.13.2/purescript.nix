{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
({
  flags = { release = false; };
  package = {
    specVersion = "0";
    identifier = {
      name = "purescript";
      version = "0.13.2";
    };
    license = "BSD-3-Clause";
    copyright =
      "(c) 2013-17 Phil Freeman, (c) 2014-19 Gary Burgess, (c) other contributors (see CONTRIBUTORS.md)";
    maintainer =
      "Gary Burgess <gary.burgess@gmail.com>, Hardy Jones <jones3.hardy@gmail.com>, Harry Garrood <harry@garrood.me>, Christoph Hegemann <christoph.hegemann1337@gmail.com>, Liam Goodacre <goodacre.liam@gmail.com>, Nathan Faubion <nathan@n-son.com>";
    author = "Phil Freeman <paf31@cantab.net>";
    homepage = "http://www.purescript.org/";
    url = "";
    synopsis = "PureScript Programming Language Compiler";
    description =
      "A small strongly, statically typed programming language with expressive types, inspired by Haskell and compiling to JavaScript.";
    buildType = "Simple";
  };
  components = {
    "library" = {
      depends = [
        (hsPkgs.Cabal)
        (hsPkgs.Glob)
        (hsPkgs.aeson)
        (hsPkgs.aeson-better-errors)
        (hsPkgs.aeson-pretty)
        (hsPkgs.ansi-terminal)
        (hsPkgs.array)
        (hsPkgs.base)
        (hsPkgs.base-compat)
        (hsPkgs.blaze-html)
        (hsPkgs.bower-json)
        (hsPkgs.boxes)
        (hsPkgs.bytestring)
        (hsPkgs.cheapskate)
        (hsPkgs.clock)
        (hsPkgs.containers)
        (hsPkgs.data-ordlist)
        (hsPkgs.deepseq)
        (hsPkgs.directory)
        (hsPkgs.dlist)
        (hsPkgs.edit-distance)
        (hsPkgs.file-embed)
        (hsPkgs.filepath)
        (hsPkgs.fsnotify)
        (hsPkgs.haskeline)
        (hsPkgs.language-javascript)
        (hsPkgs.lifted-async)
        (hsPkgs.lifted-base)
        (hsPkgs.microlens-platform)
        (hsPkgs.monad-control)
        (hsPkgs.monad-logger)
        (hsPkgs.mtl)
        (hsPkgs.parallel)
        (hsPkgs.parsec)
        (hsPkgs.pattern-arrows)
        (hsPkgs.process)
        (hsPkgs.protolude)
        (hsPkgs.regex-tdfa)
        (hsPkgs.safe)
        (hsPkgs.scientific)
        (hsPkgs.semigroups)
        (hsPkgs.sourcemap)
        (hsPkgs.split)
        (hsPkgs.stm)
        (hsPkgs.stringsearch)
        (hsPkgs.syb)
        (hsPkgs.text)
        (hsPkgs.time)
        (hsPkgs.transformers)
        (hsPkgs.transformers-base)
        (hsPkgs.transformers-compat)
        (hsPkgs.unordered-containers)
        (hsPkgs.utf8-string)
        (hsPkgs.vector)
      ];
      build-tools =
        [ (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy)) ];
    };
    exes = {
      "purs" = {
        depends = [
          (hsPkgs.Cabal)
          (hsPkgs.Glob)
          (hsPkgs.aeson)
          (hsPkgs.aeson-better-errors)
          (hsPkgs.aeson-pretty)
          (hsPkgs.ansi-terminal)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.blaze-html)
          (hsPkgs.bower-json)
          (hsPkgs.boxes)
          (hsPkgs.bytestring)
          (hsPkgs.cheapskate)
          (hsPkgs.clock)
          (hsPkgs.containers)
          (hsPkgs.data-ordlist)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.dlist)
          (hsPkgs.edit-distance)
          (hsPkgs.file-embed)
          (hsPkgs.filepath)
          (hsPkgs.fsnotify)
          (hsPkgs.haskeline)
          (hsPkgs.http-types)
          (hsPkgs.language-javascript)
          (hsPkgs.lifted-async)
          (hsPkgs.lifted-base)
          (hsPkgs.microlens-platform)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.optparse-applicative)
          (hsPkgs.parallel)
          (hsPkgs.parsec)
          (hsPkgs.pattern-arrows)
          (hsPkgs.process)
          (hsPkgs.protolude)
          (hsPkgs.purescript)
          (hsPkgs.regex-tdfa)
          (hsPkgs.safe)
          (hsPkgs.scientific)
          (hsPkgs.semigroups)
          (hsPkgs.sourcemap)
          (hsPkgs.split)
          (hsPkgs.stm)
          (hsPkgs.stringsearch)
          (hsPkgs.syb)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.transformers-compat)
          (hsPkgs.unordered-containers)
          (hsPkgs.utf8-string)
          (hsPkgs.vector)
          (hsPkgs.wai)
          (hsPkgs.wai-websockets)
          (hsPkgs.warp)
          (hsPkgs.websockets)
        ] ++ (pkgs.lib).optional (!flags.release) (hsPkgs.gitrev);
        build-tools =
          [ (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy)) ];
      };
    };
    tests = {
      "tests" = {
        depends = [
          (hsPkgs.Cabal)
          (hsPkgs.Glob)
          (hsPkgs.HUnit)
          (hsPkgs.aeson)
          (hsPkgs.aeson-better-errors)
          (hsPkgs.aeson-pretty)
          (hsPkgs.ansi-terminal)
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.blaze-html)
          (hsPkgs.bower-json)
          (hsPkgs.boxes)
          (hsPkgs.bytestring)
          (hsPkgs.cheapskate)
          (hsPkgs.clock)
          (hsPkgs.containers)
          (hsPkgs.data-ordlist)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.dlist)
          (hsPkgs.edit-distance)
          (hsPkgs.file-embed)
          (hsPkgs.filepath)
          (hsPkgs.fsnotify)
          (hsPkgs.haskeline)
          (hsPkgs.hspec)
          (hsPkgs.hspec-discover)
          (hsPkgs.language-javascript)
          (hsPkgs.lifted-async)
          (hsPkgs.lifted-base)
          (hsPkgs.microlens-platform)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.parallel)
          (hsPkgs.parsec)
          (hsPkgs.pattern-arrows)
          (hsPkgs.process)
          (hsPkgs.protolude)
          (hsPkgs.purescript)
          (hsPkgs.regex-tdfa)
          (hsPkgs.safe)
          (hsPkgs.scientific)
          (hsPkgs.semigroups)
          (hsPkgs.sourcemap)
          (hsPkgs.split)
          (hsPkgs.stm)
          (hsPkgs.stringsearch)
          (hsPkgs.syb)
          (hsPkgs.tasty)
          (hsPkgs.tasty-golden)
          (hsPkgs.tasty-hspec)
          (hsPkgs.tasty-quickcheck)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.transformers-compat)
          (hsPkgs.unordered-containers)
          (hsPkgs.utf8-string)
          (hsPkgs.vector)
        ];
        build-tools =
          [ (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy)) ];
      };
    };
  };
} // rec {
  src = with builtins.fromJSON (builtins.readFile ./purescript-src.json);
    builtins.fetchTarball {
      name = "purescript-v0.13.2";
      url = "${url}/archive/${rev}.tar.gz";
      inherit sha256;
    };
}) // {
  cabal-generator = "hpack";
}
