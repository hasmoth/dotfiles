local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    cpp = { "clang_format" }
    -- css = { "prettier" },
    -- html = { "prettier" },
  },
  formatters = {
    clang_format = {
        prepend_args = { "--style=WebKit" },
    },
  },
  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

require("conform").setup(options)
