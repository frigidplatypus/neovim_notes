{
  plugins = {
    # render-markdown.enable = true;
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
            path = "~/Notes/";
          }
        ];
      };
      # path = "/path/to/obsidian";
    };
    glow.enable = true;
    # markdown-preview.enable = true;
    # mkdnflow.enable = true;
  };
}
