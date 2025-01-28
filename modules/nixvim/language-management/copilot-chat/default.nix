{
  plugins.copilot-chat = {
    enable = false;

    settings = {
      context = "buffers";
      window = {
        layout = "float";
      };
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>cc";
      action = "<cmd>CopilotChatToggle<cr>";
    }
  ];
}
