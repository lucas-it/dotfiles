return {
  {
    "tpope/vim-fugitive",
    cmd = { "Git", "G" },
    event = "VeryLazy",
    keys = {
      { "<leader>gst", "<cmd>tab G<cr>", desc = "Git status in new tab" },
      { "<leader>gss", "<cmd>G<cr>", desc = "Git status in new split" },
      { "<leader>gsv", "<cmd>vert G<cr>", desc = "Git status in new vsplit" },
    },
  },
}
