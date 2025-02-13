{ pkgs, ... }:
{
  plugins.none-ls = {
    enable = true;
    sources = {
      code_actions = {
        statix.enable = true;
      };
      diagnostics = {
        statix.enable = true;
      };
      formatting = {
        nixfmt = {
          enable = true;
          package = pkgs.nixfmt-rfc-style;
        };
        gofmt.enable = true;
        goimports.enable = true;
        treefmt.enable = true;
        ktlint.enable = true;
        prettier = {
          enable = true;
          disableTsServerFormatter = true;
        };
      };
    };
  };
  keymaps = [
    {
      key = "<leader>cf";
      action = "vim.lsp.buf.format";
      options.desc = "Format File";
      lua = true;
    }
  ];
}
