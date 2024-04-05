return {
	'https://github.com/kevinhwang91/nvim-ufo',
	config = true,
	event = 'VeryLazy',
	dependencies = {
		'https://github.com/kevinhwang91/promise-async',
		{
			'https://github.com/luukvbaal/statuscol.nvim',
			config = function()
				local builtin = require 'statuscol.builtin'
				require('statuscol').setup {
					relculright = true,
					segments = {
						{ text = { builtin.foldfunc }, click = 'v:lua.ScFa' },
						{ text = { '%s' }, click = 'v:lua.ScSa' },
						{ text = { builtin.lnumfunc, ' ' }, click = 'v:lua.ScLa' },
					},
				}
			end,
		},
	},
}
