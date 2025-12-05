--lua/plugins/rose-pine.lua
return {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    require("rose-pine").setup({
      disable_italics = false,
      dim_inactive_windows = false,
      -- Disable dimming of NC (non-current) highlight groups
      highlight_groups = {
        -- Prevent dimming of ignored/untracked files
        NormalNC = { bg = "none" },
      },
    })
    -- vim.cmd("colorscheme rose-pine")
  end
}
