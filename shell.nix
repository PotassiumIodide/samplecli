
let
  pkgs = import <nixpkgs> {};
in
  with pkgs;
  stdenv.mkDerivation {
    name = "hello";
    buildInputs = [
      cargo
      rustc
      pkgconfig
      openssl.dev
      nix
    ];
    OPENSSL_DEV=openssl.dev;
  }