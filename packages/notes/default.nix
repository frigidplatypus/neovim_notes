{
  pkgs,
  stdenv,
  lib,
  namespace,
  ...
}:

with lib;
with lib.frgd-notes;

let
  notes = pkgs.writeShellScriptBin "notes" ''
    ${pkgs.frgd-notes.neovim}/bin/nvim ~/notes
  '';
in

stdenv.mkDerivation {
  pname = "notes";
  version = "0.1.0";
  src = ./.;
  buildInputs = [
    pkgs.frgd-notes.neovim
    notes
  ];
  installPhase = ''
    mkdir -p $out/
    cp -R ${notes}/* $out/
  '';

}
