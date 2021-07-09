let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "morpheusthewhite";
    repo = "spicetify-themes";
    rev = "f3daef1d1fae1dfff3c0486e8b6fdc554dca69d6";
    sha256 = "sha256-n3wizajBCR7vuP63MSSy1Q07y4sEFKJLPSv4c91Qpk4=";
    fetchSubmodules = true;
  }
