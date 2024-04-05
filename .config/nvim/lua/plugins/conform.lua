return {
	'https://github.com/stevearc/conform.nvim',
	event = 'VeryLazy',

	config = {
		format_after_save = {
			lsp_fallback = true,
		},

		formatters = {
			black = {
				command = 'black',
				stdin = true,
			},

			clang_format = {
				command = 'clang-format',
				stdin = true,
				args = {
					'--style=file:' .. os.getenv 'HOME' .. '/.config/clang-format/cpp.yml',
				},
			},

			google_java_format = {
				command = 'google-java-format',
				stdin = true,
				args = {
					'-',
				},
			},

			prettier = {
				command = 'prettier',
				stdin = true,
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
			graphql = { 'prettier' },
			haskell = { 'fourmolu' },
			html = { 'prettier' },
			java = { 'google_java_format' },
			javascript = { 'prettier' },
			javascriptreact = { 'prettier' },
			json = { 'prettier' },
			less = { 'prettier' },
			lua = { 'stylua' },
			markdown = { 'prettier' },
			python = { 'black' },
			rust = { 'rustfmt' },
			sbt = { 'scalafmt' },
			scala = { 'scalafmt' },
			scss = { 'prettier' },
			sh = { 'shfmt' },
			typescript = { 'prettier' },
			typescriptreact = { 'prettier' },
			vue = { 'prettier' },
			yaml = { 'prettier' },
			zsh = { 'shfmt' },
		},
	},

	keys = {
		{
			'<leader>f',
			function()
				require('conform').format { async = true }
			end,
		},
	},
}
