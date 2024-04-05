return {
	'https://github.com/f-person/git-blame.nvim',
	event = 'VeryLazy',

	config = {
		enabled = false,
	},

	keys = {
		{ '<leader>b', vim.cmd.GitBlameToggle },
	},
}
