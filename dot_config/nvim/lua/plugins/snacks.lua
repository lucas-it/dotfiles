---@module 'lazy'

return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    dashboard = {
      sections = {
        { section = "header" },
        {
          pane = 2,
          section = "terminal",
          cmd = "",
          height = 5,
          padding = 1,
        },
        { section = "keys", gap = 1, padding = 1 },
        { pane = 2, icon = " ", title = "Recent Files", section = "recent_files", indent = 4, padding = 1 },
        { pane = 2, icon = " ", title = "Projects", section = "projects", indent = 4, padding = 1 },
        {
          pane = 2,
          icon = " ",
          title = "Git Status",
          section = "terminal",
          enabled = function()
            return Snacks.git.get_root() ~= nil
          end,
          cmd = "git status --short --branch --renames",
          height = 5,
          padding = 1,
          ttl = 5 * 60,
          indent = 5,
        },
        { section = "startup" },
      },
    },
    image = {
      enabled = true,
    },
    indent = {
      chunk = { enabled = true },
    },
    picker = {
      hidden = true,
    },
  },
}
