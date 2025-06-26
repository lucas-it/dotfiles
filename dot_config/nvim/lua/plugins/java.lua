return {
  {
    "mfussenegger/nvim-jdtls",
    opts = function(_, opts)
      opts = vim.tbl_deep_extend("force", opts or {}, {
        settings = {
          java = {
            -- How to make VS Code organize Java imports like IntelliJ
            -- https://stackoverflow.com/a/54794714
            --
            completion = {
              importOrder = { "", "javax", "java", "#" },
            },
          },
        },
      })

      return opts
    end,
  },
}
