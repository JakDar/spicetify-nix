let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "morpheusthewhite";
    repo = "spicetify-themes";
    rev = "fc2be2025a835025249574f15c9fe6156ff5700a";
    sha256 = "1w117lv3xbpmn6vvwwl6ww3yzl7v7bbx51h0k4hj8b6h6fw6kh27";
    fetchSubmodules = true;
  }
