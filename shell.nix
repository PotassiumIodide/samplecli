let
  pkgs = import <nixpkgs> {};
  stdenv.mkDerivation {
    name = "samplecli";
    buildInputs = [
      cargo
      rustc
      pkgconfig
      openssl.dev
      nix
    ];
    OPENSSL_DEV=openssl.dev;
  }
