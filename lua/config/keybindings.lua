-- Custom keymapss
--
--
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Yank selection to system clipboard" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostics (float)" })


-- Format the file
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Format file with LSP" })


vim.keymap.set("n", "<Esc>", "<Cmd>noh<CR><Esc>", { desc = "Clear search highlight on Esc" })
