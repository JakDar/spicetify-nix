let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "spicetify";
    repo = "spicetify-themes";
    rev = "95fd6ed8e98e456bed015cbe8a76253cd17064d2";
    sha256 = "oxX4ivacopIwdx9YbUThJZgr5YayylBlMZoO4VJDcMk=";
  }
