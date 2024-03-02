return {

  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        -- width = 28,
      },
      event_handlers = {

        {
          event = "file_opened",
          handler = function(file_path)
            -- auto close
            -- vimc.cmd("Neotree close")
            -- OR
            require("neo-tree.command").execute({ action = "close" })
          end,
        },
      },

      filesystem = {
        filtered_items = {
          visible = true,
          -- hide_dotfiles = false,
          -- hide_hidden = false,
          -- hide_gitignored = false,
        },
        follow_current_file = {
          enabled = true, -- This will find and focus the file in the active buffer every time
          --               -- the current file is changed while the tree is open.
          leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
        },
      },
    },
  },
}
