{
  plugins.fzf-lua = {
    enable = true;
    profile = "telescope";
    keymaps = {
      "<leader>ff" = {
        action = "files";
        options.desc = "Find project files";
      };
      "<leader>fg" = {
        action = "live_grep";
        options.desc = "Find text";
      };
      "<leader>fd" = {
        action = "diagnostics_document";
        options.desc = "Find buffer diagnostics";
      };
      "<leader>fD" = {
        action = "diagnostics_workspace";
        options.desc = "Find workspace diagnostics";
      };
      "<leader>fs" = {
        action = "lsp_document_symbols";
        options.desc = "Find lsp document symbols";
      };
    };
  };
}
