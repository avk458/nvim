if true then
  return {}
end
return {
  { "HiPhish/jinja.vim" },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        jinja_lsp = {
          filetypes = { "html", "jinja" },
          root_dir = function()
            return "."
          end,
          init_options = {
            templates = "./assets/views",
            backend = { "./src" },
            lang = "rust",
          },
        },
      },
    },
  },
}
