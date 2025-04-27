return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require("lualine").setup({
        -- tabline = {
        --   lualine_a = { 'buffers' },
        --   lualine_b = { 'branch' },
        --   lualine_c = { 'filename' },
        --   lualine_x = {},
        --   lualine_y = {},
        --   lualine_z = { 'tabs' }
        -- }
        options = {
          globalstatus = true
        },
        winbar = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { { 'filename', path = 1 } },
          lualine_x = {},
          lualine_y = {},
          lualine_z = {}
        },
        inactive_winbar = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { { 'filename', path = 1 } },
          lualine_x = {},
          lualine_y = {},
          lualine_z = {}
        }

      })
    end
  },
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      vim.opt.termguicolors = true
      require("bufferline").setup {
        options = {
          diagnostics = "nvim_lsp",
          offsets = {
            {
              filetype = "NvimTree",
              text = "File Explorer",
              highlight = "Directory",
              separator = true -- use a "true" to enable the default, or set your own character
            }
          }
        }
      }
    end
  },
}
