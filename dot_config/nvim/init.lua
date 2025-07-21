-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local config_dir = vim.fn.stdpath("config")
vim.cmd("source " .. config_dir .. "/fugitive-difftool.vim")
