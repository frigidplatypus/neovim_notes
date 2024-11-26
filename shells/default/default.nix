{
  inputs,
  mkShell,
  pkgs,
  system,
  namespace,
  ...
}:
mkShell {
  packages = with pkgs; [
    frgd-notes.neovim
  ];

  shellHook = ''
    echo 🔨 Welcome to ${namespace}


  '';
}
