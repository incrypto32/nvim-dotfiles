return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-file-browser.nvim"
  },

  config = function()
    require("telescope").setup {
      extensions = {
        file_browser = {
          hijack_netrw = true
        }
      }
    }

    require("telescope").load_extension("file_browser")
  end,


  keys = {
    -- Telescope specific
    { "<leader>ff", "<cmd>Telescope find_files<cr>",           desc = "Find Files" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>",            desc = "Live Grep" },
    { "<leader>fb", "<cmd>Telescope file_browser<cr>",         desc = "File Browser" },

    -- LSP + utility (command-style)
    { "gd",         "<cmd>Telescope lsp_definitions<cr>",      desc = "Go to definition" },
    { "gr",         "<cmd>Telescope lsp_references<cr>",       desc = "Go to references" },
    { "gi",         "<cmd>Telescope lsp_implementations<cr>",  desc = "Go to implementation" },
    { "gy",         "<cmd>Telescope lsp_type_definitions<cr>", desc = "Go to type definition" },
    { "<leader>km", "<cmd>Telescope keymaps<cr>",              desc = "Show all keymaps" },

  }
}
