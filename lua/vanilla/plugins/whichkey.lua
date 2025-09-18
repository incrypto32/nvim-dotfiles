return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- ur configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
    {
      "<leader><leader>",
      function()
        require("which-key").show()
      end,
      desc = "Global Keymaps (which-key)",
    }

  },
}
