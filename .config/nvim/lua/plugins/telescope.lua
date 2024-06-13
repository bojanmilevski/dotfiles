return {
	'https://github.com/nvim-telescope/telescope.nvim',
	event = 'VeryLazy',

	dependencies = {
		'https://github.com/nvim-lua/plenary.nvim',
		'https://github.com/nvim-tree/nvim-web-devicons',
	},

	config = {
		extensions = {
			fzf = {
				fuzzy = true,
				override_generic_sorter = true,
				override_file_sorter = true,
				case_mode = 'smart_case',
			},
		},
	},

	keys = {
		{
			'<leader>tg',
			function()
				vim.cmd 'Telescope live_grep'
			end,
		},

		{
			'<leader>tf',
			function()
				vim.cmd 'Telescope find_files'
			end,
		},

		{
			'<leader>td',
			function()
				require('telescope.builtin').lsp_definitions()
			end,
		},
	},
}
