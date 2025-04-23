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
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = true,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {}
    end,
    keys = {
      { "<leader>nt", "<cmd>NvimTreeToggle<CR>", desc = "Toggle file tree" },
    }
  }

-- {
  --   'akinsho/bufferline.nvim',
  --   version = "*",
  --   dependencies = 'nvim-tree/nvim-web-devicons',
  --   config = function()
  --     vim.opt.termguicolors = true
  --     require("bufferline").setup {}
  --   end
  -- },

}
