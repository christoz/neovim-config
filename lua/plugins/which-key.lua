return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		preset = "modern",
	},
	config = function(_, opts)
		local wk = require("which-key")
		wk.setup(opts)

		-- Register git-related keybindings
		wk.add({
			{ "<leader>g", group = "git" },
			{ "<leader>gg", desc = "Neogit" },
			{ "<leader>gf", desc = "Format buffer" },
			{ "<leader>gv", desc = "Diffview" },
			{ "<leader>gh", desc = "File history" },
			{ "<leader>gd", desc = "Go to definition" },
			{ "<leader>gr", desc = "Go to references" },
			{ "<leader>gC", desc = "GitHub dashboard" },
			{ "<leader>ca", desc = "Code actions" },
			{ "<space>rn", desc = "Rename" },
			{ "<leader>e", desc = "Diagnostics" },
			{ "[d", desc = "Previous diagnostic" },
			{ "]d", desc = "Next diagnostic" },
		})
	end,
}
