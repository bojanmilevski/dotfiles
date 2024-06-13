return {
	'mfussenegger/nvim-dap',

	dependencies = {
		'rcarriga/nvim-dap-ui',
		'nvim-neotest/nvim-nio',
		{
			'theHamsta/nvim-dap-virtual-text',
			dependencies = {
				'nvim-treesitter/nvim-treesitter',
			},
		},
	},

	main = 'dapui',

	config = true,

	-- config = function()
	-- 	-- require('dapui').setup()
	-- 	require('nvim-dap-virtual-text').setup()
	-- end,
}
