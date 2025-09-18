require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("i", "jk", "<ESC>")

-- Test Meta key
map("n", "<M-t>", function() vim.notify("Meta key works!", vim.log.levels.INFO) end, { desc = "Test Meta key" })

-- Exit terminal mode with double escape
map("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
