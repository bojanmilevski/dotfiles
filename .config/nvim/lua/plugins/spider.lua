return {
	'https://github.com/chrisgrieser/nvim-spider',
	event = 'VeryLazy',

	config = {
		skipInsignificantPunctuation = true,
	},

	keys = {
		{
			'w',
			function()
				require('spider').motion 'w'
			end,
		},
		{
			'e',
			function()
				require('spider').motion 'e'
			end,
		},
		{
			'b',
			function()
				require('spider').motion 'b'
			end,
		},
		{
			'ge',
			function()
				require('spider').motion 'g'
			end,
		},
	},
}
