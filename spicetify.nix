{ stdenv, pkgs }:

stdenv.mkDerivation rec {
  version = "2.8.3";
  name = "spicetify-${version}";

  src = pkgs.fetchurl {
    name = "spicetify-${version}-linux-amd64.tar.gz";
    url = "https://github.com/khanhas/spicetify-cli/releases/download/v${version}/spicetify-${version}-linux-amd64.tar.gz";
    sha256 = "sha256:1zkzajvm0bcsnanmkdab5ma7i7iq3v4qwxghykplxcb9p8dzaayp";
  };

  sourceRoot = ".";

  installPhase = ''
    mkdir -p $out
    cp -r * $out
  '';
}
