{
  plugins.zen-mode = {
    enable = true;
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>zz";
      action = "<cmd>ZenMode<CR>";
      options = {
        desc = "Toggle Zen Mode";
      };
    }
  ];
}
