{ lib, buildGoModule, fetchFromGitHub }:
# from nixpkgs

buildGoModule rec {
  pname = "spicetify-cli";
  version = "2.22.1";

  src = fetchFromGitHub {
    owner = "spicetify";
    repo = pname;
    rev = "v${version}";
    # sha256 = lib.fakeSha256;
    sha256 = "sha256-EbTmxnUk2taAKWPNuoVcKybKgdvPegFjz/ImTIabZ7Q=";
  };

  vendorSha256 = "sha256-Ypu3AKnjh2lDh43t1GZMJo7ZyEDyNbPWvoePLp+WQdI=";

  # used at runtime, but not installed by default
  postInstall = ''
    cp -r ${src}/jsHelper $out/bin/jsHelper
  '';

  doInstallCheck = true;
  installCheckPhase = ''
    $out/bin/spicetify-cli --help > /dev/null
  '';

  meta = with lib; {
    description = "Command-line tool to customize Spotify client";
    homepage = "https://github.com/khanhas/spicetify-cli/";
    license = licenses.gpl3Plus;
    maintainers = with maintainers; [ ];
  };
}
