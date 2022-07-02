let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "spicetify";
    repo = "spicetify-themes";
    rev = "2f25fa371e6e2a3d201102254e47344856763ab9";
    sha256 = "FqUXL0QBO24U7XgH64Lzy5At3TGw8fTic0a+qFfTWqA=";
  }
