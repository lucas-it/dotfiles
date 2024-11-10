return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    servers = {
      snyk_ls = {
        initOptions = {
          activateSnykOpenSource = true,
        },
      },
    },
  },
}
