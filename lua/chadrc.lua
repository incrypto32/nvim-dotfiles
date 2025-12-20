-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "catppuccin",

	hl_override = {
		DiffAdd = { bg = "#34462F" },
		DiffChange = { bg = "#2F4146" },
		DiffDelete = { bg = "#462F2F" },
		DiffText = { bg = "#463C2F" },
		DiffAdded = { fg = "#a6e3a1", bold = true },
		DiffRemoved = { fg = "#f38ba8", bold = true },
		DiffChanged = { fg = "#f9e2af", bold = true },
		diffAdded = { fg = "#a6e3a1", bold = true },
		diffRemoved = { fg = "#f38ba8", bold = true },
		diffChanged = { fg = "#f9e2af", bold = true },
		diffLine = { fg = "#89b4fa", bold = true },
		diffFile = { fg = "#cba6f7", bold = true },
		DiffviewDiffDelete = { fg = "#6c7086" },
		DiffviewFilePanelSelected = { fg = "#89b4fa" },
		DiffviewStatusAdded = { fg = "#a6e3a1", bold = true },
		DiffviewStatusUntracked = { fg = "#fab387", bold = true },
		DiffviewStatusModified = { fg = "#f9e2af", bold = true },
		DiffviewStatusRenamed = { fg = "#89dceb", bold = true },
	},
}

-- M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
-- }

return M
