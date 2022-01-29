{ stdenv, pkgs }:

stdenv.mkDerivation rec {
  version = "2.8.4";
  name = "spicetify-${version}";

  src = pkgs.fetchurl {
    name = "spicetify-${version}-linux-amd64.tar.gz";
    url = "https://github.com/khanhas/spicetify-cli/releases/download/v${version}/spicetify-${version}-linux-amd64.tar.gz";
    sha256 = "sha256-Icu/ss0HDOVbZXtbRL2ZdmdmI+NDBMBF8Z/iTrQNx/E=";
  };

  sourceRoot = ".";

  installPhase = ''
    mkdir -p $out
    cp -r * $out
  '';
}
