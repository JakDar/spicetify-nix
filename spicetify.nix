{ lib, buildGoModule, fetchFromGitHub }:
# from nixpkgs

buildGoModule rec {
  pname = "spicetify-cli";
  version = "2.16.2";

  src = fetchFromGitHub {
    owner = "spicetify";
    repo = pname;
    rev = "v${version}";
    # sha256 = lib.fakeSha256;
    sha256 = "sha256-13JWceuiNz1FxgVVQ2KV88zYLIBkEVeTfPF5eEK1oe8=";
  };

  vendorSha256 = "sha256-rmQpS4k/G3s/H7sPxVZ70KtJEvYjsDV2htV97viWttM=";

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
