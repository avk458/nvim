-- override lang/rust extra
return {
  {
    "mrcjkb/rustaceanvim",
    opts = {
      server = {
        default_settings = {
          -- don't know how to override table extend in lua
          ["rust-analyzer"] = {
            procMacro = {
              ignored = false,
            },
          },
        },
      },
    },
  },
}
