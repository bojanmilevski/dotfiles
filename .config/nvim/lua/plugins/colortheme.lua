return {
	'https://github.com/Mofiqul/vscode.nvim',
	priority = 1000,
	event = 'VeryLazy',

	config = {
		transparent = true,
		italic_comments = true,
		disable_nvimtree_bg = true,
	},

	init = function()
		vim.cmd.colorscheme 'vscode'
	end,
}
