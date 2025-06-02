-- EXAMPLE 
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "clangd", "gopls", "pylsp" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- typescript
-- lspconfig.tsserver.setup {
--   on_attach = on_attach,
--   on_init = on_init,
--   capabilities = capabilities,
-- }
lspconfig["pylsp"].setup {
    settings = {
        autoimport = true,
    },
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
}

lspconfig["clangd"].setup {
    cmd = {
        "clangd",
        "--background-index",
        "--completion-style=detailed",
        "--enable-config",
        "--function-arg-placeholders=false",
        "--all-scopes-completion",
        "--header-insertion-decorators",
        "--header-insertion=never",
        "--log=verbose",
        "--pch-storage=memory",
        "--pretty",
        "--suggest-missing-includes",
    },
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
}
