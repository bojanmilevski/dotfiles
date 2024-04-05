return {
	'https://github.com/Zeioth/compiler.nvim',
	event = 'VeryLazy',

	dependencies = {
		{
			'stevearc/overseer.nvim',
			cmd = { 'CompilerOpen', 'CompilerToggleResults', 'CompilerRedo' },
			config = {
				task_list = {
					direction = 'bottom',
					min_height = 25,
					max_height = 25,
					default_detail = 1,
				},
			},
		},
	},

	cmd = { 'CompilerOpen', 'CompilerToggleResults', 'CompilerRedo' },
	config = true,

	keys = {
		{ '<leader>c', vim.cmd.CompilerOpen, { noremap = true, silent = true } },
	},
}
