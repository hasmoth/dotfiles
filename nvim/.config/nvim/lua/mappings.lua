require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map('v', '<leader>sg', function()
  require('telescope-live-grep-args.shortcuts').grep_visual_selection()
end, { desc = 'Live Grep Visual Selection' })

map("n", "<leader>gw", function()
  require("telescope-live-grep-args.shortcuts").grep_word_under_cursor()
end, { desc = "Grep word under cursor" })

map("n", "<leader><TAB>", "<cmd>LspClangdSwitchSourceHeader<cr>", { desc = "Switch Header/Source" })
map("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })


map("v", "//", "y/<C-R>\"<CR>N", { desc = "Search from visual selection"})

map("n", "P", ":put!<CR>", { desc = "force newline for paste"})

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>di", vim.diagnostic.open_float, { desc = "open LSP float diagnostic" })
map("t", "<C-x>", "<C-\\><C-N>", { desc = "exit terminal mode" })
-- litee mappings
map("n", "<leader>ct", vim.lsp.buf.incoming_calls, { desc = "call tree incoming" })
map("n", "<leader>cT", vim.lsp.buf.outgoing_calls, { desc = "call tree outgoing" })
map("n", "<leader>ds", vim.lsp.buf.document_symbol, { desc = "symbols" })
map("n", "<leader>lt", vim.cmd.LTPanel, { desc = "toggle panel" })
