return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "stylua",
      "shellcheck",
      "shfmt",
      "snyk",
      "snyk-ls",
      "rust-analyzer",
    },
  },
}
