let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "morpheusthewhite";
    repo = "spicetify-themes";
    rev = "691a069fe03933695abadaa53ae5c624564ad5b6";
    sha256 = "0w3wgfiwq00yr2iam7bx7a7ai7s5fvlvril8gl2g7v84i20cadis";
    fetchSubmodules = true;
  }
