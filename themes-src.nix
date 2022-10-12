let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "spicetify";
    repo = "spicetify-themes";
    rev = "eb6b818368d9c01ef92522623b37aa29200d0bc0";
    sha256 = "Q/LBS+bjt2WP/s43LE8hDjYHxPVorT/RA71esPraLOM=";
  }

