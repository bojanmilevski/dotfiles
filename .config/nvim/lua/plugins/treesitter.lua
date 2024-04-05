return {
	'https://github.com/nvim-treesitter/nvim-treesitter',
	event = 'VeryLazy',

	dependencies = {
		'https://github.com/nvim-treesitter/nvim-treesitter-context',
		'https://github.com/onsails/lspkind.nvim',
	},

	config = function()
		require('nvim-treesitter.install').update {
			with_sync = true,
		}

		require('nvim-treesitter.configs').setup {
			highlight = {
				enable = true,
				use_languagetree = true,
				additional_vim_regex_highlighting = false,
			},

			indent = {
				enable = true,
			},
		}
	end,
}
