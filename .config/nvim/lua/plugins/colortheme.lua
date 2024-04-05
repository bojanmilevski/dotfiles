return {
	'https://github.com/Mofiqul/vscode.nvim',
	event = 'VeryLazy',

	config = {
		transparent = false,
		italic_comments = true,
		disable_nvimtree_bg = true,
	},

	init = function()
		vim.cmd.colorscheme 'vscode'
	end,
}
