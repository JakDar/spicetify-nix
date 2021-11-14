{ stdenv, pkgs }:

stdenv.mkDerivation rec {
  version = "2.8.1";
  name = "spicetify-${version}";

  src = pkgs.fetchurl {
    name = "spicetify-${version}-linux-amd64.tar.gz";
    url = "https://github.com/khanhas/spicetify-cli/releases/download/v${version}/spicetify-${version}-linux-amd64.tar.gz";
    sha256 = "sha256:0lfnps3apd62w6m0qri1bjavmdrkbfr3wjalnrhb7hjzafcb2d09";
  };

  sourceRoot = ".";

  installPhase = ''
    mkdir -p $out
    cp -r * $out
  '';
}
