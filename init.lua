-- Disable netrw we are using custom stuff
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.mapleader = " " -- space as leader
vim.g.maplocalleader = "\\"

-- requires
require("config.lazy")
require("config.keybindings")
require("config.autocmd")

-- Options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.autoindent = true
vim.opt.smartindent = true

print("Yeaay!!!")
