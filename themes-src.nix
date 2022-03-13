let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "morpheusthewhite";
    repo = "spicetify-themes";
    rev = "07596ca4b2b0798add2d76e4fee7a696f9faf86b";
    sha256 = "/PqvH/m7H+s+1qBRvdAvQVRnleuDzLbwUHqtc2qDnB8=";
  }
