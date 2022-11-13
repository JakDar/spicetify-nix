{ lib, buildGoModule, fetchFromGitHub }:
# from nixpkgs

buildGoModule rec {
  pname = "spicetify-cli";
  version = "2.14.1";

  src = fetchFromGitHub {
    owner = "spicetify";
    repo = pname;
    rev = "v${version}";
    # sha256 = lib.fakeSha256;
    sha256 = "sha256-262tnSKX6M9ggm4JIs0pANeq2JSNYzKkTN8awpqLyMM=";
  };

  vendorSha256 = "sha256-E2Q+mXojMb8E0zSnaCOl9xp5QLeYcuTXjhcp3Hc8gH4=";

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
