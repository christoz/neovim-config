return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require('neo-tree').setup({
      filesystem = {
        filtered_items = {
          visible = true, -- Show hidden files
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_by_name = {},
        },
      },
      event_handlers = {
        {
          event = 'file_opened',
          handler = function(file_path)
            -- auto close
            require('neo-tree.command').execute({ action = 'close' })
          end
        },
      }
    })

    -- Keymap for Neotree
    vim.keymap.set('n', '<C-n>', ':Neotree filesystem toggle reveal left <CR>')
  end

}
