return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      opts = vim.tbl_deep_extend("force", opts, {
        -- views = {
        --   cmdline_popup = {
        --     position = {
        --       row = "95%",
        --       col = "50%",
        --     },
        --     size = {
        --       width = "90%",
        --     },
        --   },
        --   cmdline_popupmenu = {
        --     position = {
        --       row = "89%",
        --       col = "50%",
        --     },
        --     size = {
        --       width = "90%",
        --       height = 5,
        --     },
        --     border = {
        --       style = "rounded",
        --     },
        --     win_options = {
        --       winhighlight = {
        --         Normal = "NoiceCmdLinePopup",
        --         FloatBorder = "NoiceCmdlinePopupBorder",
        --       },
        --     },
        --   },
        --   cmdline_output = {
        --     format = "default",
        --     enter = true,
        --     win_options = {
        --       winhighlight = {
        --         Normal = "NoiceCmdLinePopup",
        --       },
        --     },
        --   },
        --   mini = {
        --     win_options = {
        --       winblend = 0,
        --       winhighlight = {
        --         Normal = "NoicePopupmenu",
        --       },
        --     },
        --   },
        -- },
        -- presets = {
        --   bottom_search = false,
        --   command_palette = false,
        --   cmdline_output_to_split = true,
        -- },
        routes = {
          {
            filter = {
              event = "lsp",
              kind = "progress",
              cond = function(noice_msg)
                local data = noice_msg.opts.progress or {}

                local client = data.client
                local msg = data.message

                if client ~= "jdtls" or msg == nil then
                  return false
                end

                local patterns = { "^Building", "^Validate doc", "^Publish Diag" }
                local found = false

                for _, pattern in ipairs(patterns) do
                  if msg:find(pattern) ~= nil then
                    found = true
                    break
                  end
                end

                -- vim.print(data)
                return found
              end,
            },
            opts = { skip = true },
          },
        },
      })

      return opts
    end,
  },
}
