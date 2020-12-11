{ pkgs ? import <nixpkgs> {} }:

pkgs.rustPlatform.buildRustPackage rec {
  name = "samplecli";
  version = "1.0.0";
  src = ./.;
  cargoSha256 = "00jhl2g5n1h72gkk43f74x4y7lh0pz473364isp9bwjm06668693";
}

