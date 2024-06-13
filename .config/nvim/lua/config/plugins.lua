require('lazy').setup('plugins', {
	lockfile = vim.fn.stdpath 'data' .. '/lazy/lazy-lock.json',
	debug = false,
	concurrency = 50,

	install = {
		missing = true,
	},

	change_detection = {
		enabled = false,
		notify = false,
	},

	readme = {
		enabled = false,
	},

	performance = {
		rtp = {
			disabled_plugins = {
				'2html_plugin',
				'bugreport',
				'compiler',
				'editorconfig',
				'ftplugin',
				'getscript',
				'getscriptPlugin',
				'gzip',
				'health',
				'logipat',
				'man',
				'matchit',
				'matchparen',
				'netrw',
				'netrwFileHandlers',
				'netrwPlugin',
				'netrwSettings',
				'optwin',
				'rplugin',
				'rrhelper',
				'spellfile_plugin',
				'synmenu',
				'syntax',
				'tar',
				'tarPlugin',
				'tohtml',
				'tutor',
				'vimball',
				'vimballPlugin',
				'zip',
				'zipPlugin',
			},
		},
	},
})
