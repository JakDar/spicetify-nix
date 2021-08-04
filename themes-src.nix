let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "morpheusthewhite";
    repo = "spicetify-themes";
    rev = "6e09413e46d16e1a2013172d12c233bdee0bbab5";
    sha256 = "06hxpz30l5aryjwgc48351h84lx08p5fa3f8xay5hd93qsg1jwr1";
    fetchSubmodules = true;
  }
