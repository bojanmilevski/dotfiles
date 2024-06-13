return {
	'https://github.com/neovim/nvim-lspconfig',
	event = 'VeryLazy',

	dependencies = {
		{
			'https://github.com/j-hui/fidget.nvim',
			event = 'VeryLazy',
			config = true,
		},
	},

	config = function()
		local servers = {
			'bashls',
			'clangd',
			'cmake',
			'cssls',
			'emmet_ls',
			'eslint',
			'hls',
			'html',
			'jdtls',
			'jsonls',
			'ltex',
			'lua_ls',
			'marksman',
			'prosemd_lsp',
			'pylsp',
			'pyright',
			'tailwindcss',
			'texlab',
			'tsserver',
			'yamlls',
		}

		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())
		capabilities.textDocument.completion.completionItem.snippetSupport = true

		for _, server in ipairs(servers) do
			require('lspconfig')[server].setup {
				capabilities = capabilities,
			}
		end

		local icons = {
			Error = '',
			Hint = '󰌵',
			Info = '',
			Warn = '',
		}

		-- column diagnostic icons
		for type, icon in pairs(icons) do
			local hl = 'DiagnosticSign' .. type
			vim.fn.sign_define(hl, {
				text = icon,
				texthl = hl,
				numhl = hl,
			})
		end

		vim.diagnostic.config {
			severity_sort = true,
			signs = true,
			underline = true,
			update_in_insert = true,

			-- floating text diagnostic icons
			virtual_text = {
				prefix = function(diagnostic)
					if diagnostic.severity == vim.diagnostic.severity.ERROR then
						return icons['Error']
					elseif diagnostic.severity == vim.diagnostic.severity.WARN then
						return icons['Warn']
					elseif diagnostic.severity == vim.diagnostic.severity.INFO then
						return icons['Info']
					elseif diagnostic.severity == vim.diagnostic.severity.HINT then
						return icons['Hint']
					end
				end,
			},

			float = {
				border = 'rounded',
				source = 'always',
				header = '',
				prefix = '',
			},
		}

		-- highlight token under cursor
		vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
			callback = vim.lsp.buf.document_highlight,
		})

		vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
			callback = vim.lsp.buf.clear_references,
		})
	end,

	keys = {
		{ '<leader>a', vim.lsp.buf.code_action },
		{ 'gr', vim.lsp.buf.references },
		{ 'gd', vim.lsp.buf.definition },
		{ 'gt', vim.lsp.buf.type_definition },
		{ 'crn', vim.lsp.buf.rename },
		{
			'<leader>i',
			function()
				vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
			end,
		},
	},
}
