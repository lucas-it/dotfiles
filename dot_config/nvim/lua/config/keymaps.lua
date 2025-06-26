-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

-- Buffer navigation
map("n", "<tab>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
map("n", "<s-tab>", "<cmd>bprevious<cr>", { desc = "Previous Buffer" })

-- package-info
map(
  "n",
  "<leader>cpt",
  "<cmd>lua require('package-info').toggle()<cr>",
  { silent = true, noremap = true, desc = "Toggle" }
)
map(
  "n",
  "<leader>cpd",
  "<cmd>lua require('package-info').delete()<cr>",
  { silent = true, noremap = true, desc = "Delete package" }
)
map(
  "n",
  "<leader>cpu",
  "<cmd>lua require('package-info').update()<cr>",
  { silent = true, noremap = true, desc = "Update package" }
)
map(
  "n",
  "<leader>cpi",
  "<cmd>lua require('package-info').install()<cr>",
  { silent = true, noremap = true, desc = "Install package" }
)
map(
  "n",
  "<leader>cpc",
  "<cmd>lua require('package-info').change_version()<cr>",
  { silent = true, noremap = true, desc = "Change package version" }
)

-- Cmd abbrev
local cmd = vim.cmd

-- Git fetch
--
cmd("cnoreabbrev gf Git fetch")

-- Git pull
--
cmd("cnoreabbrev gpr Git pull --rebase")

-- Git checkout
--
cmd("cnoreabbrev gco Git checkout")

-- Git push
--
cmd("cnoreabbrev gp Git push")
cmd("cnoreabbrev gpf Git push --force-with-lease")

-- Git commit
--
cmd("cnoreabbrev gc Git commit -m")
cmd("cnoreabbrev gc! Git commit --amend")

-- Git rebase
--
cmd("cnoreabbrev grb Git rebase")
cmd("cnoreabbrev grbi Git rebase -i")
cmd("cnoreabbrev grbc Git rebase --continue")
cmd("cnoreabbrev grba Git rebase --abort")

-- Git stash
--
cmd("cnoreabbrev gsta Git stash push")
cmd("cnoreabbrev gstp Git stash pop")

-- Git diff
--
cmd("cnoreabbrev gd Git diff")
cmd("cnoreabbrev gdto Git difftool --name-status")

-- Git reset
--
vim.cmd("cnoreabbrev grh Git reset")
vim.cmd("cnoreabbrev grhh Git reset --hard")
vim.cmd("cnoreabbrev grhk Git reset --keep")
vim.cmd("cnoreabbrev grhs Git reset --soft")
