return {
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = function(_, opts)
      opts = vim.tbl_deep_extend("force", opts or {}, {
        formatters = {
          biome = {
            args = { "check", "--write", "--stdin-file-path", "$FILENAME" },
          },
        },
      })

      return opts
    end,
  },
}
