return {
  {
    'nvim-telescope/telescope-ui-select.nvim',
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-ui-select.nvim',
    },
    config = function()
      local telescope = require("telescope")
      local builtin = require("telescope.builtin")

      telescope.setup({
        defaults = {
          file_ignore_patterns = {
            "^node_modules/",
            "^.git/",
            "^dist/",
            "^build/",
            "^target/",
            "%.lock$",
          },
        },
        pickers = {
          find_files = {
            hidden = true,
            -- Use fd for faster searching (falls back to find if fd not available)
            find_command = { "fd", "--type", "f", "--hidden", "--exclude", "node_modules", "--exclude", ".git" },
          },
        },
        extensions = {
          ['ui-select'] = {
            require('telescope.themes').get_dropdown {}
          }
        }
      })

      require('telescope').load_extension('ui-select')

      vim.keymap.set('n', '<C-p>', builtin.find_files, {})
      vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    end
  }
}
