let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "morpheusthewhite";
    repo = "spicetify-themes";
    rev = "1d9ef3902aa79659ce0a6884d0f1249f07174918";
    sha256 = "LzDn214UuN49u6iSry+EA9m5Fe03IGMFd+87ZKnvES4=";
    fetchSubmodules = true;
  }
