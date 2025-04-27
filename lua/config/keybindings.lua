-- Custom keymaps
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Yank selection to system clipboard" })
vim.keymap.set("n", "<leader>y", '"+yy', { desc = "Yank selection to system clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p', { desc = "Paste from system clipboard" })

vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostics (float)" })

-- Format the file
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Format file with LSP" })


vim.keymap.set("n", "<Esc>", "<Cmd>noh<CR><Esc>", { desc = "Clear search highlight on Esc" })

-- Easy move between splits
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>l", "<C-w>l")
vim.keymap.set("n", "<leader>H", "<C-w>H")
vim.keymap.set("n", "<leader>J", "<C-w>J")
vim.keymap.set("n", "<leader>K", "<C-w>K")
vim.keymap.set("n", "<leader>L", "<C-w>L")
vim.keymap.set("n", "<S-Tab>", "<C-w>w", { desc = "Cycle windows" })

-- Use jj to exit insert mode
vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode" })

-- Terminal related
function _G.set_terminal_keymaps()
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], { desc = "Exit terminal mode (Esc)", buffer=0 })
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], { desc = "Exit terminal mode (jk)", buffer=0 })
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
