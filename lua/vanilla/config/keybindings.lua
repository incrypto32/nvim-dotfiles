-- Custom keymaps
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Yank selection to system clipboard" })
vim.keymap.set("n", "<leader>y", '"+yy', { desc = "Yank selection to system clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p', { desc = "Paste from system clipboard" })

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Format file with LSP" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostics (float)" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })

vim.keymap.set("n", "<Esc>", "<Cmd>noh<CR><Esc>", { desc = "Clear search highlight on Esc" })

-- Easy move between splits
vim.keymap.set("n", "<leader>h", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<leader>j", "<C-w>j", { desc = "Move to bottom window" })
vim.keymap.set("n", "<leader>k", "<C-w>k", { desc = "Move to top window" })
vim.keymap.set("n", "<leader>l", "<C-w>l", { desc = "Move to right window" })
vim.keymap.set("n", "<leader>H", "<C-w>H", { desc = "Move window to left" })
vim.keymap.set("n", "<leader>J", "<C-w>J", { desc = "Move window to bottom" })
vim.keymap.set("n", "<leader>K", "<C-w>K", { desc = "Move window to top" })
vim.keymap.set("n", "<leader>L", "<C-w>L", { desc = "Move window to right" })
vim.keymap.set("n", "<leader>w", "<C-w>w", { desc = "Switch window" })

-- Resize window width
vim.keymap.set("n", "<C-h>", ":vertical resize -5<CR>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-l>", ":vertical resize +5<CR>", { desc = "Increase window width" })

-- Resize window height
vim.keymap.set("n", "<C-k>", ":resize -2<CR>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-j>", ":resize +2<CR>", { desc = "Increase window height" })


-- Use jj to exit insert mode
vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode" })


-- Terminal related
function _G.set_terminal_keymaps()
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], { desc = "Exit terminal mode (Esc)", buffer = 0 })
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], { desc = "Exit terminal mode (jk)", buffer = 0 })
end

-- Ctrl + s for save
vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<cmd>w<CR>", { desc = "Save file", silent = true })

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
