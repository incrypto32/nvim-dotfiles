-- Vanilla Neovim Setup

-- Disable netrw we are using custom stuff
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
vim.g.mapleader = " " -- space as leader
vim.g.maplocalleader = "\\"

-- Load vanilla config modules
require("vanilla.config.lazy")
require("vanilla.config.keybindings")
require("vanilla.config.autocmd")

-- Options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.autoindent = true
vim.opt.smartindent = true

print("Yeaay!!!")
