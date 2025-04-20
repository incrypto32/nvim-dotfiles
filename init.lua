
vim.g.mapleader = " "         -- space as leader
vim.g.maplocalleader = "\\"

-- requires
require("config.lazy")
require("config.keybindings")

-- Options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.autoindent = true
