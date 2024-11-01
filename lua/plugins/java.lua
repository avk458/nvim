return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "java", "groovy" },
    },
  },
  {
    "nvim-java/nvim-java",
    config = false,
    dependencies = {
      {
        "neovim/nvim-lspconfig",
        opts = {
          servers = {
            jdtls = {
              -- your jdtls configuration goes here
            },
          },
          setup = {
            jdtls = function()
              require("java").setup()
            end,
          },
        },
      },
    },
  },
}
