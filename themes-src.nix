let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "spicetify";
    repo = "spicetify-themes";
    rev = "0d36944b848fa19715bda0d7364cfad472faee9f";
    sha256 = "r6MD6Z4eDyblTXy0fFkv48/7Z2Y8IvJt12jriXPk1yY=";
  }
