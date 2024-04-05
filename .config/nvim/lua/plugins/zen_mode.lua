return {
	'https://github.com/folke/zen-mode.nvim',
	event = 'VeryLazy',

	config = {
		window = {
			width = 90,
			height = 1,
		},
	},

	keys = {
		{ '<leader>z', vim.cmd.ZenMode },
	},
}
