return {
	'https://github.com/neovim/nvim-lspconfig',
	event = 'VeryLazy',

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

		local icons = {
			Error = '',
			Hint = '󰌵',
			Info = '',
			Warn = '',
		}

		local on_attach = function(client, buffer) end

		local init_options = {
			documentFormatting = true,
		}

		local capabilities = require('cmp_nvim_lsp').default_capabilities()

		capabilities.textDocument.completion.completionItem.snippetSupport = true

		capabilities.textDocument.foldingRange = {
			dynamicRegistration = false,
			lineFoldingOnly = true,
		}

		local flags = {
			allow_incremental_sync = true,
			debouce_text_changes = 10,
		}

		for _, server in ipairs(servers) do
			require('lspconfig')[server].setup {
				on_attach = on_attach,
				init_options = init_options,
				capabilities = capabilities,
				flags = flags,
			}
		end

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

			virtual_text = {
				prefix = function(diagnostic)
					if diagnostic.severity == vim.diagnostic.severity.ERROR then
						return icons['Error']
					elseif diagnostic.severity == vim.diagnostic.severity.WARN then
						return icons['Warn']
					elseif diagnostic.severity == vim.diagnostic.severity.INFO then
						return icons['Info']
					else
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
	end,

	keys = {
		{ '<leader>a', vim.lsp.buf.code_action },
		{ '<leader>d', vim.lsp.buf.hover },
		{ '<leader>r', vim.lsp.buf.rename },
		{ 'gD', vim.lsp.buf.declaration },
		{ 'gR', vim.lsp.buf.references },
		{ 'gd', vim.lsp.buf.definition },
		{ 'gi', vim.lsp.buf.implementation },
		{ 'gn', vim.diagnostic.goto_next },
		{ 'gp', vim.diagnostic.goto_prev },
		{ 'gt', vim.lsp.buf.type_definition },
		{
			'<leader>i',
			function()
				if not vim.lsp.inlay_hint.is_enabled() then
					vim.lsp.inlay_hint.enable(0, true)
				else
					vim.lsp.inlay_hint.enable(0, false)
				end
			end,
		},
	},
}
