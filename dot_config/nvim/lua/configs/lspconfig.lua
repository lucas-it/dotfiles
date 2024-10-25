-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()
require("java").setup()

local lspconfig = require "lspconfig"
local servers = {
  "html", "cssls", "ts_ls", "yamlls", "rust_analyzer", "jdtls",
  "phan", "twiggy_language_server", "sqls", "dockerls"
}
local nvlsp = require "nvchad.configs.lspconfig"
local illuminate = require "illuminate"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = function (client)
      nvlsp.on_attach(client)
      illuminate.on_attach(client)
    end,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

