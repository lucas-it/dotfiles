return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "stylua",
      "shellcheck",
      "shfmt",
      "flake8",
      "snyk",
      "snyk-ls",
      "rust-analyzer",
    },
  },
}
