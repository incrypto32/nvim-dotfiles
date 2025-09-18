return {
  -- {
  --   "ellisonleao/gruvbox.nvim",
  --   priority = 1500,
  --   config = function()
  --     vim.cmd.colorscheme("gruvbox")
  --   end,
  -- },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1500,
    config = function()
      vim.cmd.colorscheme("tokyonight")
    end,

    opts = {},
  },
}
