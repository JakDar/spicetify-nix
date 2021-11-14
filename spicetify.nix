{ stdenv, pkgs }:

stdenv.mkDerivation rec {
  version = "2.7.1";
  name = "spicetify-${version}";

  src = pkgs.fetchurl {
    name = "spicetify-${version}-linux-amd64.tar.gz";
    url = "https://github.com/khanhas/spicetify-cli/releases/download/v${version}/spicetify-${version}-linux-amd64.tar.gz";
    sha256 = "sha256-3NTMOZ7YNAE8uNVcvofqNI0CquoZx/p+xk915IzgeUE=";
  };

  sourceRoot = ".";

  installPhase = ''
    mkdir -p $out
    cp -r * $out
  '';
}
