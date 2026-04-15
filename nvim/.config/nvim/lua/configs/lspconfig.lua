require("nvchad.configs.lspconfig").defaults()
local servers = {
    html = {},
    cssls = {},
    clangd = {
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
    },
    gopls = {},
    pylsp = {
        settings = {
            autoimport = true,
        },
    },
}

for name, opts in pairs(servers) do
    vim.lsp.config(name, opts)
    vim.lsp.enable(name)
end

vim.lsp.enable(servers)
