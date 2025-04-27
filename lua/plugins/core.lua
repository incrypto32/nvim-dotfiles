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
  }
  ,
  {
    "j-hui/fidget.nvim",
    opts = {},
  }
}
