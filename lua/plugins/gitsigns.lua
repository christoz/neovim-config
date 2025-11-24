return {
	"lewis6991/gitsigns.nvim",
	opts = {
		current_line_blame = true,
		current_line_blame_opts = {
			delay = 300,
		},
		sign_priority = 6,
		attach_to_untracked = false,
		-- Disable all text highlighting/dimming features
		numhl = false,
		linehl = false,
		word_diff = false,
		watch_gitdir = {
			enable = false,
		},
	},
}
