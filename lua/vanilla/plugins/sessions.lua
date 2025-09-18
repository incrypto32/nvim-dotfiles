return {
  "rmagatti/auto-session",
  lazy = false,
  -- priority = 1000,
  config = function()
    require("auto-session").setup {
      log_level = "error",
      auto_session_suppress_dirs = { "~/", "~/Downloads", "/" },
      post_restore_cmds = { function()
        -- Restore nvim-tree after a session is restored
        local nvim_tree_api = require('nvim-tree.api')
        nvim_tree_api.tree.open()
        nvim_tree_api.tree.change_root(vim.fn.getcwd())
        nvim_tree_api.tree.reload()
      end
      },
      pre_save_cmds = {
        function()
          local nvim_tree_api = require('nvim-tree.api');
          nvim_tree_api.tree.close()
        end
      },
      args_allow_single_directory = true,
      args_allow_files_auto_save = true, -- boolean|function Allow saving a session even when launched with a file argument (or multiple files/dirs). It does not load any existing session first. While you can just set this to true, you probably want to set it to a function that decides when to save a session when launched with file args. See documentation for more details

    }
  end,
}
