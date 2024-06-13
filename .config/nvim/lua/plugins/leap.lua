return {
	'https://github.com/ggandor/leap.nvim',
	dependencies = 'https://github.com/tpope/vim-repeat',
	event = 'VeryLazy',

	config = {
		highlight_unlabeled_phase_one_targets = true,
	},

	keys = {
		{
			's',
			function()
				require('leap').leap {
					target_windows = {
						vim.fn.win_getid(),
					},
				}
			end,
		},
	},
}
