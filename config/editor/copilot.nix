{
  plugins = {
    copilot-chat.enable = true;
    copilot-lua.enable = true;
  };

  keymaps = [
    {
      key = "<leader>cca";
      action = "<cmd>CopilotChatToggle<CR>";
      options.desc = "Toggle CopilotChat";
    }
    {
      key = "<leader>ccq";
      action.__raw = ''
        function()
              local input = vim.fn.input("Quick Chat: ")
              if input ~= "" then
                require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
              end
            end'';
      options.desc = "Quick Chat";
    }
    {
      key = "<leader>ccp";
      action.__raw = ''
        function()
          local actions = require("CopilotChat.actions")
          require("CopilotChat.integrations.fzflua").pick(actions.prompt_actions()) end'';
      options.desc = "CopilotChat - Prompt actions";
    }
  ];
}
