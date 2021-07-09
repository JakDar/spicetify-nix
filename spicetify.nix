{ stdenv, pkgs }:

stdenv.mkDerivation rec {
  name = "spicetify-2.5.0";

  src = pkgs.fetchurl {
    name = "spicetify-2.5.0-linux-amd64.tar.gz";
    url = https://github.com/khanhas/spicetify-cli/releases/download/v2.5.0/spicetify-2.5.0-linux-amd64.tar.gz;
    sha256 = "sha256-WHc5t2OULv+zNvCmFGFdYLMQH9eiI71E1dQbmmB8AOo=";
  };

  sourceRoot = ".";

  installPhase = ''
    mkdir -p $out
    cp -r * $out
  '';
}
