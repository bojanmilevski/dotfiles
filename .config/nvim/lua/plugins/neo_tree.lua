return {
	'https://github.com/nvim-neo-tree/neo-tree.nvim',
	event = 'VeryLazy',

	dependencies = {
		'https://github.com/nvim-lua/plenary.nvim',
		'https://github.com/nvim-tree/nvim-web-devicons',
		'https://github.com/MunifTanjim/nui.nvim',
	},

	config = {
		filesystem = {
			filtered_items = {
				visible = true,
				hide_dotfiles = false,
				never_show = { '.git' },
				hide_by_name = {
					'.github',
					'.gitignore',
					'package-lock.json',
				},
			},
		},
	},

	keys = {
		{
			'<leader>n',
			function()
				vim.cmd 'Neotree toggle'
			end,
		},
	},
}
