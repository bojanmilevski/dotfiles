return {
	'https://github.com/nvim-telescope/telescope.nvim',
	dependencies = 'https://github.com/nvim-lua/plenary.nvim',
	event = 'VeryLazy',

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
			'<leader>t',
			function()
				vim.cmd 'Telescope live_grep'
			end,
		},
	},
}
