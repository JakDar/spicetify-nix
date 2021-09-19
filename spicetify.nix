{ stdenv, pkgs }:

stdenv.mkDerivation rec {
  version = "2.6.4";
  name = "spicetify-${version}";

  src = pkgs.fetchurl {
    name = "spicetify-${version}-linux-amd64.tar.gz";
    url = "https://github.com/khanhas/spicetify-cli/releases/download/v${version}/spicetify-${version}-linux-amd64.tar.gz";
    sha256 = "sha256:0mqbn2wg008z31j27lxv3ss59a9xgfrgxhzm46zy0w16j1fnvra5";
  };

  sourceRoot = ".";

  installPhase = ''
    mkdir -p $out
    cp -r * $out
  '';
}
