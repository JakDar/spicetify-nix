let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "morpheusthewhite";
    repo = "spicetify-themes";
    rev = "acaad8c633a7c20f6722e685ae2e948e331a8cb1";
    sha256 = "9t+MPQJP1oR7SXUECiUStN+FEUoaZ1Kip7oRfIYnuDU=";
  }
