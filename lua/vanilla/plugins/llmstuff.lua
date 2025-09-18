return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = {
          enabled = true,
          auto_trigger = false,
          keymap = {
            accept =
            ",,",
            accept_word = false,
            accept_line = false,
            next = "<C-n>",
            prev = "<C-p>",
            dismiss = "<C-e>",
          },
        },
        panel = { enabled = true },
      })

      -- Set a keymap to toggle auto auto_trigger
      vim.keymap.set("n", "<leader>ca", function()
        require("copilot.suggestion").toggle_auto_trigger()
      end, { desc = "Toggle Copilot auto trigger" })
    end,
  },
  {
    "joshuavial/aider.nvim",
    config = true
  },
}
