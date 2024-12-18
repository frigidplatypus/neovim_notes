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
    frgd-notes.notes
  ];

  shellHook = ''
    echo 🔨 Welcome to ${namespace}

  '';
}
