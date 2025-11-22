return {
	"johnseth97/gh-dash.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	lazy = true,
	keys = {
		{
			"<leader>gC",
			function()
				require("gh_dash").toggle()
			end,
			desc = "Toggle gh-dash popup",
		},
	},
	opts = {
		border = "rounded",
		width = 0.8,
		height = 0.8,
		autoinstall = true,
	},
}
