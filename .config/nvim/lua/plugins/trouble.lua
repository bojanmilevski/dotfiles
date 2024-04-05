return {
	'https://github.com/folke/trouble.nvim',
	dependencies = 'https://github.com/nvim-tree/nvim-web-devicons',
	event = 'VeryLazy',

	config = {
		signs = {
			error = '',
			warning = '',
			hint = '󰌵',
			information = '',
			other = '',
		},
	},

	keys = {
		{ '<leader>e', vim.cmd.TroubleToggle },
	},
}
