require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>di", vim.diagnostic.open_float, { desc = "open LSP float diagnostic" })
map("t", "<C-x>", "<C-\\><C-N>", { desc = "exit terminal mode" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
