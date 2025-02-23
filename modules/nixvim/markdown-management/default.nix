{
  plugins = {
    render-markdown.enable = true;
    obsidian = {
      enable = true;
      settings = {
        completion.nvim_cmp = true;
        daily_notes = {
          folder = "Daily Notes";
          date_format = "%Y-%m-%d";
        };
        workspaces = [
          {
            name = "Notes";
            path = "~/notes/";
          }
        ];
      };
      # path = "/path/to/obsidian";
    };
    glow.enable = true;
    markdown-preview.enable = true;
    # mkdnflow.enable = true;
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>fg";
      action = "<cmd>ObsidianSearch<cr>";
    }
    {
      mode = "n";
      key = "<leader><leader>";
      action = "<cmd>Telescope find_files cwd=~/notes/<cr>";
    }
  ];
}
