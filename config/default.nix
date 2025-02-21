{ pkgs, ... }:
{
  imports = [
    ./cmp
    ./coding
    ./editor
    ./lsp
    ./options.nix
    ./snippets
    ./ui
    ./utils
  ];

  extraPackages = with pkgs; [ ripgrep ];

  colorschemes.gruvbox = {
    enable = true;
    settings = {
      contrast = "hard";
    };
  };
}
