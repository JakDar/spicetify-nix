let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "morpheusthewhite";
    repo = "spicetify-themes";
    rev = "1a9d4e3e0817147fdbb3123183bf58416a4b78c2";
    sha256 = "BQgZel9t8wHxeUYsEgVJM5uEd3UJ9SV1DUEOpDe5XoI=";
  }
