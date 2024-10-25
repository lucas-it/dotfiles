return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre',
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc", "html", "css", "java",
        "javascript", "typescript", "tsx", "yaml", "json", "php",
        "twig", "sql", "dockerfile"
      },
    },
  },

  {
    "nvim-java/nvim-java",
    lazy = false,
    dependencies = {
      "nvim-java/lua-async-await",
      "nvim-java/nvim-java-core",
      "nvim-java/nvim-java-test",
      "nvim-java/nvim-java-dap",
      "MunifTanjim/nui.nvim",
      "neovim/nvim-lspconfig",
      "mfussenegger/nvim-dap",
      {
        "williamboman/mason.nvim",
        opts = {
          registries = {
            "github:nvim-java/mason-registry",
            "github:mason-org/mason-registry",
          },
        },
      },
    },
  },

  {
    "RRethy/vim-illuminate"
  },

  {
    "folke/trouble.nvim",
  },

  {
    "f-person/git-blame.nvim",
    opts = {
      enabled = true,
      message_template = '<author> • <date> • <summary>',
      date_format = '%d.%m.%Y %H:%M',
    },
    keys = {
      { '<leader>gb', '<CMD>GitBlameToggle<CR>', desc = 'Git blame toogle' },
    },
  },
}
