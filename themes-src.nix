let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "morpheusthewhite";
    repo = "spicetify-themes";
    rev = "a15aaea00f9c22214a7fb0a921a40eab4bb7e975";
    sha256 = "14556yxj2zrs0qs4vl3wyz9ksa1i1f0cdh0lwrwzd1i2ci9hvb9x";
    fetchSubmodules = true;
  }
