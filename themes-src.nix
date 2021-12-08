let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "morpheusthewhite";
    repo = "spicetify-themes";
    rev = "0bbdb305f9a6fb1d983c45223c8296b75aa250ad";
    sha256 = "sha256:09lli5zj5zihp9k3zlblgiy75nks71cvpkr6nx9p1mygdm0nxikz";
    fetchSubmodules = true;
  }
