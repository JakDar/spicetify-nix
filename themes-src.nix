let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "spicetify";
    repo = "spicetify-themes";
    rev = "a547f3d28cac8122d5a1c9f5e7f64f44b48a9280";
    sha256 = "sha256-87afREB/TLqs4rObsDPG/PaM5A5keB3GbXTATWcqMN0=";
  }

