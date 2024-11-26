{
  plugins.luasnip = {
    enable = true;
    settings = {
      enable_autosnippets = true;
      store_selection_keys = "<Tab>";
    };
    fromLua = [
      { paths = ./snippets/lua; }
    ];
    fromSnipmate = [
      { paths = ./snippets/snipmate; }
    ];
  };
  plugins.friendly-snippets.enable = true;
}
