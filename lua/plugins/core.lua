return {
  "numToStr/Comment.nvim",

  -- Nice little status line in the bottom
  "nvim-lualine/lualine.nvim",

  -- Automatic session managmenet
  {
    'rmagatti/auto-session',
    lazy = false,
  },

  -- Auto pairing of parantheses
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
  }
}
