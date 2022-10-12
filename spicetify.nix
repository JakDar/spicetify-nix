{ lib, buildGoModule, fetchFromGitHub }:
# from nixpkgs

buildGoModule rec {
  pname = "spicetify-cli";
  version = "2.14.0";

  src = fetchFromGitHub {
    owner = "spicetify";
    repo = pname;
    rev = "v${version}";
    # sha256 = lib.fakeSha256;
    sha256 = "sha256-iaaf5ZHaHSEkQdxqZtsc6K/3+x6gAfvgQoWWYWcFeV4=";
  };

  vendorSha256 = "sha256-zYIbtcDM9iYSRHagvI9D284Y7w0ZxG4Ba1p4jqmQyng=";

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
