return {
	'https://github.com/stevearc/conform.nvim',
	event = 'VeryLazy',

	config = {
		format_after_save = {
			lsp_fallback = true,
		},

		formatters = {
			clang_format = {
				command = 'clang-format',
				stdin = true,
				args = {
					'--style=file:' .. os.getenv 'HOME' .. '/.config/clang-format/cpp.yml',
				},
			},

			rustfmt = {
				command = 'rustfmt',
				stdin = true,
				args = {
					'--config-path',
					os.getenv 'HOME' .. '/.config/rustfmt/rustfmt.toml',
				},
			},

			stylua = {
				command = 'stylua',
				stdin = true,
				args = {
					'--config-path',
					os.getenv 'HOME' .. '/.config/stylua/stylua.toml',
					'--',
					'-',
				},
			},
		},

		formatters_by_ft = {
			['*'] = { 'trim_whitespace' },
			['_'] = { 'trim_whitespace' },
			bash = { 'shfmt' },
			c = { 'clang_format' },
			cpp = { 'clang_format' },
			html = { 'prettier' },
			java = { 'google_java_format' },
			javascript = { 'prettier' },
			javascriptreact = { 'prettier' },
			json = { 'prettier' },
			lua = { 'stylua' },
			markdown = { 'prettier' },
			python = { 'ruff_format' },
			rust = { 'rustfmt' },
			sh = { 'shfmt' },
			typescript = { 'prettier' },
			typescriptreact = { 'prettier' },
			yaml = { 'prettier' },
		},
	},

	keys = {
		{
			'<leader>f',
			function()
				require('conform').format { async = true, lsp_fallback = true }
			end,
		},
	},
}
