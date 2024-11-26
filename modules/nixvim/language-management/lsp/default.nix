{ pkgs, ... }:
{

  extraConfigLua = ''
    	vim.api.nvim_create_autocmd("LspAttach", {
       callback = function(args)
         local client = vim.lsp.get_client_by_id(args.data.client_id)
         client.server_capabilities.semanticTokensProvider = nil
       end,
     });
  '';

  autoCmd = [
    {
      event = [
        "BufRead"
        "BufNewFile"
      ];
      pattern = [
        "*.txt"
        "*.md"
        "*.tex"
        "LICENSE"
      ];
      command = "setlocal spell";
    }
  ];

  plugins.lsp = {
    enable = true;
    inlayHints = true;

    keymaps = {
      silent = true;

      diagnostic = {
        "<leader>j" = "goto_next";
        "<leader>k" = "goto_prev";
      };

      lspBuf = {
        K = "hover";
        gh = "hover";
        gr = "references";
        gd = "definition";
        gi = "implementation";
        gD = "type_definition";
      };

    };

    servers = {
      marksman.enable = true;
      #fish_lsp.enable = true;
    };
  };
}
