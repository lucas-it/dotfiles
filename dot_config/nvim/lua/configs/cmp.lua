vim.api.nvim_set_hl(0, "CmpGhostText", { link = "Comment", default = true })

local cmp = require "cmp"
local defaults = require "nvchad.configs.cmp"

return {
  auto_brackets = {},
  completion = {
    completeopt = "menu,menuone,noinsert,noselect",
  },
  preselect = cmp.PreselectMode.None,
  mapping = defaults.mapping,
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "path" },
    { name = "treesitter" },
  }, {
    { name = "buffer" },
  }),
  formatting = {
    format = function(_, item)
      local widths = {
        abbr = vim.g.cmp_widths and vim.g.cmp_widths.abbr or 40,
        menu = vim.g.cmp_widths and vim.g.cmp_widths.menu or 30,
      }

      for key, width in pairs(widths) do
        if item[key] and vim.fn.strdisplaywidth(item[key]) > width then
          item[key] = vim.fn.strcharpart(item[key], 0, width - 1) .. "…"
        end
      end

      return item
    end,
  },
  -- experimental = {
  --   ghost_text = {
  --     hl_group = "CmpGhostText",
  --   },
  -- },
  sorting = defaults.sorting,
}
