return {
	'https://github.com/mfussenegger/nvim-lint',
	event = 'VeryLazy',

	config = function()
		require('lint').linters_by_ft = {
			javascript = { 'eslint', 'eslint_d' },
			lua = { 'luacheck' },
		}
	end,

	init = function()
		vim.api.nvim_create_autocmd('BufEnter', {
			callback = function()
				require('lint').try_lint()
			end,
		})
	end,

	keys = {
		{
			'<leader>l',
			function()
				require('lint').try_lint()
			end,
		},
	},
}
