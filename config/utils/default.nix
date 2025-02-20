{
  imports = [
    ./oil.nix
    ./training.nix
    ./undotree.nix
    ./whichkey.nix
  ];

  plugins.tmux-navigator.enable = true;
}
