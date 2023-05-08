let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "spicetify";
    repo = "spicetify-themes";
    rev = "e945db43cb51e8036a4b3412540eb18182618d2c";
    sha256 = "1ZmavROvKdC2234wZwb2mY0ZwYMwxlPAJK9Tj4kUQ+A=";
  }

