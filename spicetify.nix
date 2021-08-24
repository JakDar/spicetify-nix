{ stdenv, pkgs }:

stdenv.mkDerivation rec {
  name = "spicetify-2.6.0";

  src = pkgs.fetchurl {
    name = "spicetify-2.6.0-linux-amd64.tar.gz";
    url = https://github.com/khanhas/spicetify-cli/releases/download/v2.6.0/spicetify-2.6.0-linux-amd64.tar.gz;
    sha256 = "sha256:1prpm2rqd47zpj3f6lndkir563r6msf0s233xl22s5cl2w2v8p48";
  };

  sourceRoot = ".";

  installPhase = ''
    mkdir -p $out
    cp -r * $out
  '';
}
