let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "morpheusthewhite";
    repo = "spicetify-themes";
    rev = "fb3deec854f257708dea68841f74847d87d07b6a";
    sha256 = "03jx3d5lyvxh1d6lx9vvzj25ikn1jp5q72y2gj0wfg84drvpxmgi";
    fetchSubmodules = true;
  }
