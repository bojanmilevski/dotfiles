return {
	'https://github.com/nvim-treesitter/nvim-treesitter',
	event = 'VeryLazy',

	dependencies = {
		'https://github.com/nvim-treesitter/nvim-treesitter-context',
		'https://github.com/onsails/lspkind.nvim',
	},

	config = {
		highlight = {
			enable = true,
		},

		indent = {
			enable = true,
		},
	},
}
