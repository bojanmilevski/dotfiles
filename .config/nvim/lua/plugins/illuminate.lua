return {
	'https://github.com/RRethy/vim-illuminate',
	event = 'VeryLazy',
	config = function()
		local color = '#282c34'
		vim.cmd('hi IlluminatedWordText cterm=none gui=none guibg=' .. color)
		vim.cmd('hi IlluminatedWordRead cterm=none gui=none guibg=' .. color)
		vim.cmd('hi IlluminatedWordWrite cterm=none gui=none guibg=' .. color)
	end,
}
