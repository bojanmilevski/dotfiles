return {
	'https://github.com/L3MON4D3/LuaSnip',
	event = 'VeryLazy',

	dependencies = {
		'rafamadriz/friendly-snippets',
		'saadparwaiz1/cmp_luasnip',
	},

	config = function()
		require('luasnip').config.setup {
			enable_autosnippets = true,
			history = true,
			updateevents = 'TextChanged,TextChangedI',
		}

		require('luasnip.loaders.from_vscode').lazy_load()
	end,

	keys = {
		{
			'<C-j>',
			function()
				require('luasnip').jump(-1)
			end,
			mode = 'i',
		},
		{
			'<C-k>',
			function()
				require('luasnip').jump(1)
			end,
			mode = 'i',
		},
		{
			'<C-j>',
			function()
				require('luasnip').jump(-1)
			end,
		},
		{
			'<C-k>',
			function()
				require('luasnip').jump(1)
			end,
		},
	},
}
