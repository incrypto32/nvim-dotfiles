return {
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  },
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",         -- required
      "nvim-telescope/telescope.nvim", -- optional
      "sindrets/diffview.nvim",
    },
    config = function()
      local neogit = require("neogit")
      neogit.setup {
        integrations = {
          diffview = true,
          telescope = true
        },
      }
    end
  }
}
