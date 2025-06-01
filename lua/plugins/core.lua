return {
  "numToStr/Comment.nvim",
  -- Auto pairing of parantheses
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
  },
  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },
  {
    "karb94/neoscroll.nvim",
    opts = {},
  },
  {
    "j-hui/fidget.nvim",
    event = "VeryLazy",
    opts = {
      -- log_level = 'debug',
    },
  },
  {
    "levouh/tint.nvim",
    config = function()
      require("tint").setup({
        tint = -70,
        window_ignore_function = function(winid)
          local bufid = vim.api.nvim_win_get_buf(winid)
          local buftype = vim.bo[bufid].buftype
          local filetype = vim.bo[bufid].filetype
          local floating = vim.api.nvim_win_get_config(winid).relative ~= ""

          -- Do not tint `terminal`, floating windows, or NvimTree, tint everything else
          return buftype == "terminal" or floating or filetype == "NvimTree"
        end
      })
    end
  }
  -- {
  --   "sunjon/shade.nvim",
  --   config = function()
  --     require 'shade'.setup({
  --       overlay_opacity = 50,
  --       opacity_step = 1,
  --       keys = {
  --         brightness_up   = '<C-Up>',
  --         brightness_down = '<C-Down>',
  --         toggle          = '<Leader>s',
  --       }
  --     })
  --   end
  -- }
}
