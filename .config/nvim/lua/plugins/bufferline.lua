return {
	'https://github.com/akinsho/bufferline.nvim',
	dependencies = 'https://github.com/nvim-tree/nvim-web-devicons',
	event = 'VeryLazy',

	config = {
		options = {
			separator_style = 'thin',
			always_show_bufferline = false,
			diagnostics = 'lsp',
			numbers = 'ordinal',
			color_icons = true,
		},
	},
}
