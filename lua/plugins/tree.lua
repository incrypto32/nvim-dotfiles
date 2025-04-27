return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  event = "VeryLazy",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
      view = {
        number = true,
        relativenumber = true,
      },

      update_focused_file = {
        enable = true,
      },

      diagnostics = {
        enable = true,
        show_on_dirs = true,
      },

      modified = {
        enable = true,
        show_on_dirs = true,
      },

      filters = {
        git_ignored = false,
      }
    }
  end,
  keys = {
    { "<leader>nt", "<cmd>NvimTreeToggle<CR>", desc = "Toggle file tree" },
  }
}
