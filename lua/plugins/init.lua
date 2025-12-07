return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
    },
  },

  {
    "j-hui/fidget.nvim",
    event = "VeryLazy",
    opts = {}
  },

  -- test new blink
  { import = "nvchad.blink.lazyspec" },

  -- Session Management
  {
    "rmagatti/auto-session",
    lazy = false,
    config = function()
      require("auto-session").setup {
        log_level = "error",
        auto_session_suppress_dirs = { "~/", "~/Downloads", "/" },
      }
    end,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      git = {
        ignore = false,
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc",
        "html", "css", "rust"
      },
    },
  },

  {
    'akinsho/toggleterm.nvim',
    cmd = "ToggleTerm",
    version = "*",
    config = true,
  
  },



  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
      "nvim-telescope/telescope.nvim",
    },
    cmd = "Neogit",
    config = function()
      require("neogit").setup({
        auto_refresh = true,
        integrations = {
          diffview = true,
        },
      })
    end,
  },

}
