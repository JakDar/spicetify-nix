let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "spicetify";
    repo = "spicetify-themes";
    rev = "b2269a9650b735b955d5b024d69c7a38022d4a7e";
    hash = "sha256-pWMswQJ7uGBPTmlZjdHoBXdVAOr3VKv+PbKZt0+G2Qg=";
  }

