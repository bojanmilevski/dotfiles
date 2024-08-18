return {
	'f-person/git-blame.nvim',
	event = 'VeryLazy',

	opts = {
		enabled = false,
	},

	keys = {
		{ '<leader>b', vim.cmd.GitBlameToggle },
	},
}