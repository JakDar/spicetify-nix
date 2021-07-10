let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "morpheusthewhite";
    repo = "spicetify-themes";
    rev = "1f70381f6f04e509d1f66e32cb6e0e50c6447ad2";
    sha256 = "06rsz3zpds7bsxvb0bzxrmdn2ni1xgkcrz791p8caqd2xszajlc3";
    fetchSubmodules = true;
  }
