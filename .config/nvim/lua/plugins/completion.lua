return {
	'https://github.com/hrsh7th/nvim-cmp',
	event = 'VeryLazy',

	dependencies = {
		'https://github.com/hrsh7th/cmp-buffer',
		'https://github.com/hrsh7th/cmp-nvim-lsp',
		'https://github.com/hrsh7th/cmp-nvim-lsp-signature-help',
		'https://github.com/hrsh7th/cmp-nvim-lua',
		'https://github.com/hrsh7th/cmp-path',
	},

	config = function()
		local cmp = require 'cmp'

		local function border(hl_name)
			return {
				{ '╭', hl_name },
				{ '─', hl_name },
				{ '╮', hl_name },
				{ '│', hl_name },
				{ '╯', hl_name },
				{ '─', hl_name },
				{ '╰', hl_name },
				{ '│', hl_name },
			}
		end

		cmp.setup {
			sources = {
				{ name = 'nvim_lsp' },
				{ name = 'nvim_lsp_signature_help' },
				{ name = 'luasnip' },
				{ name = 'nvim_lua' },
				-- { name = 'buffer' },
				{ name = 'path', options = { trailing_slash = true } },
			},

			completion = {
				completeopt = 'menu,menuone',
			},

			snippet = {
				expand = function(args)
					require('luasnip').lsp_expand(args.body)
				end,
			},

			window = {
				completion = {
					border = border 'CmpBorder',
					-- scrollbar = false,
				},

				documentation = {
					border = border 'CmpDocBorder',
					winhighlight = 'Normal:CmpDoc',
				},
			},

			formatting = {
				format = require('lspkind').cmp_format {
					with_text = true,
					-- menu = {
					-- 	buffer = '[BUFF]',
					-- 	luasnip = '[SNIP]',
					-- 	nvim_lsp = '[LSP]',
					-- 	nvim_lua = '[NVIM]',
					-- 	path = '[PATH]',
					-- },
				},
			},

			mapping = {
				['<Enter>'] = cmp.mapping.confirm {
					behavior = cmp.ConfirmBehavior.Insert,
					select = true,
				},

				['<Tab>'] = function(fallback)
					if cmp.visible() then
						cmp.select_next_item()
					else
						fallback()
					end
				end,

				['<S-Tab>'] = function(fallback)
					if cmp.visible() then
						cmp.select_prev_item()
					else
						fallback()
					end
				end,
			},
		}
	end,
}
