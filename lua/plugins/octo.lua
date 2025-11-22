return {
	"pwntester/octo.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	cmd = "Octo",
	opts = {
		enable_builtin = true,
		default_to_projects_v2 = false,
		default_merge_method = "squash",
	},
}
