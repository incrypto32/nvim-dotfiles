return {
  -- 🧩 Mason: LSP installer
  {
    "williamboman/mason.nvim",
    config = true,
  },

  -- 🔤 LSP autocompletion
  -- This is the plugin that provides autocompletion
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        mapping = cmp.mapping.preset.insert({
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = {
          { name = "nvim_lsp" },
        },
      })
    end,
  },

  -- 🔌 Mason-LSP bridge
  -- Mason is a tool to easily install LSPs
  -- nvim-lspconfig is nvims native LSP config
  -- To have nvim-lsp config work with mason we need this birdge mason-ls-config
  -- This is used to setup handlers to create an nvim-lspconfig whenever new lsp is installed
  -- And do other stuff
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      local mason_lsp = require("mason-lspconfig")
      local lspconfig = require("lspconfig")
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      mason_lsp.setup({
        automatic_installation = true,
      })
      -- mason_lsp.setup_handlers({
      --   function(server)
      --     if server == "rust_analyzer" then
      --       return
      --     end
      --     lspconfig[server].setup({
      --       capabilities = capabilities,
      --       flags = {
      --         debounce_text_changes = 100,
      --       },
      --     })
      --   end,
      -- })
    end,
  },

  {
    'mrcjkb/rustaceanvim',
    version = '^6', -- Recommended
    lazy = false,   -- This plugin is already lazy
  },

  -- Test support
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      'mrcjkb/rustaceanvim',
      "nvim-treesitter/nvim-treesitter"
    },
    config = function()
      require('neotest').setup {
        -- ...,
        adapters = {
          -- ...,
          require('rustaceanvim.neotest')
        },
      }
    end
  },


  -- 💡 Lua dev support for better LSP in config files
  {
    "folke/lazydev.nvim",
    ft = "lua",
    opts = {
      library = {
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
      },
    },
  },


}
