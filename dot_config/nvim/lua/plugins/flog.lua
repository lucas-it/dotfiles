return {
  {
    "rbong/vim-flog",
    lazy = true,
    cmd = { "Flog", "FlogSplit", "Floggit" },
    dependencies = {
      "tpope/vim-fugitive",
    },
    keys = {
      { "<leader>glt", "<cmd>Flog -all<cr>", desc = "Git log in new tab" },
      { "<leader>gls", "<cmd>Flogsplit -all<cr>", desc = "Git log in new split" },
      { "<leader>glv", "<cmd>vert Flogsplit -all<cr>", desc = "Git log in new vsplit" },
    },
  },
}
