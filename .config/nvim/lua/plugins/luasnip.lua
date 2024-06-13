return {
	'https://github.com/L3MON4D3/LuaSnip',
	event = 'VeryLazy',

	dependencies = {
		'https://github.com/rafamadriz/friendly-snippets',
		'https://github.com/saadparwaiz1/cmp_luasnip',
	},

	opts = {
		enable_autosnippets = true,
		history = true,
		updateevents = 'TextChanged,TextChangedI',
	},

	config = function()
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
