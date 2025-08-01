require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("v", "//", "y/<C-R>\"<CR>N", { desc = "Search from visual selection"})

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>di", vim.diagnostic.open_float, { desc = "open LSP float diagnostic" })
map("t", "<C-x>", "<C-\\><C-N>", { desc = "exit terminal mode" })
-- litee mappings
map("n", "<leader>ct", vim.lsp.buf.incoming_calls, { desc = "call tree incoming" })
map("n", "<leader>cT", vim.lsp.buf.outgoing_calls, { desc = "call tree outgoing" })
map("n", "<leader>ds", vim.lsp.buf.document_symbol, { desc = "symbols" })
map("n", "<leader>lt", vim.cmd.LTPanel, { desc = "toggle panel" })
