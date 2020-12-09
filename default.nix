{ pkgs ? import <nixpkgs> {} }:

pkgs.rustPlatform.buildRustPackage rec {
  name = "hello";
  version = "0.1.0";
  src = ./.;
  cargoSha256 = "1sksgrmhsirhmdrx7z4g2xix3h729i1w2c59fhsr617q6ch0n5ri";
}

