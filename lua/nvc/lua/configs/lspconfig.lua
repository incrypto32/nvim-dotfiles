require("nvchad.configs.lspconfig").defaults()

-- local servers = { "html", "cssls", "rust_analyzer"}
-- vim.lsp.enable(servers)

-- Auto-enable all Mason-installed LSP servers
require("mason-lspconfig").setup({
  automatic_enable = true,
})

-- read :h vim.lsp.config for changing options of lsp servers
