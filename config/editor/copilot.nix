{
  plugins = {
    copilot-chat = {
      enable = true;
      settings = {
        model = "claude-3.5-sonnet";
        prompts = {
          Review = "Please provide me with tips or recommendations on how to improve the code. Do not provide a full revised version of the code. At most, only provide snippets to show how to implement the tips.";
        };
      };
    };
    copilot-lua = {
      enable = true;
      settings = {
        auto_trigger = false;
      };
    };
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
