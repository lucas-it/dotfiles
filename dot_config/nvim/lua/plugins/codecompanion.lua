return {
  {
    "olimorris/codecompanion.nvim",
    opts = {
      strategies = {
        chat = {
          adapter = "copilot",
        },
        inline = {
          adapter = "copilot",
        },
      },
      adapters = {
        http = {
          copilot = function()
            return require("codecompanion.adapters").extend("copilot", {
              schema = {
                model = {
                  default = "claude-sonnet-4.5",
                },
              },
            })
          end,
        },
      },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    keys = {
      { "<leader>ac", ":CodeCompanionChat Toggle<cr>", desc = "[a]i [c]hat" },
      { "<leader>aa", ":CodeCompanionActions<cr>", desc = "[a]i [a]ctions" },
    },
  },
}
