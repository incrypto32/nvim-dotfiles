local fn = vim.fn

local autocmd = vim.api.nvim_create_autocmd

local augroup = vim.api.nvim_create_augroup

-- General Settings
local general = augroup("General", { clear = true })

-- If Neovim makes my file read-only because it changed outside, just ignore that and let me edit it.
-- autocmd("FileChangedRO", {
--   callback = function()
--     vim.bo.readonly = false
--   end,
--   group = general,
--   desc = "Disable Readonly Message",
-- })
--

-- autocmd({ "FocusLost", "BufLeave", "BufWinLeave", "InsertLeave" }, {
--   group = general,
--   desc = "Auto save and format safely",
--   callback = function()
--     if
--         vim.bo.filetype ~= ""
--         and vim.bo.buftype == ""               -- only real file buffers
--         and vim.bo.modified                    -- only modified buffers
--         and vim.api.nvim_buf_get_name(0) ~= "" -- not empty unnamed buffer
--     then
--       vim.schedule(function()
--         vim.lsp.buf.format({ async = false })
--         vim.cmd("silent! update")
--       end)
--     end
--   end,
-- })
--
autocmd("BufWritePre", {
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
  group = general,
  desc = "Auto format before saving",
})
