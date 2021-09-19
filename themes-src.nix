let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "morpheusthewhite";
    repo = "spicetify-themes";
    rev = "ad3049d1c6bfa90268d09c201f61e5d57561949c";
    sha256 = "0r31ms4y9l5d5jwbx1rdhln3gy2ac3g9pvvmb2cg27lngf2cnr8h";
    fetchSubmodules = true;
  }
