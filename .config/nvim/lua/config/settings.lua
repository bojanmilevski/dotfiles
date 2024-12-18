-- column numbers
vim.o.number = true
vim.o.relativenumber = true

-- indentation
local tab_spaces = 2
vim.o.autoindent = true
vim.o.shiftwidth = tab_spaces
vim.o.smartindent = true
vim.o.softtabstop = tab_spaces
vim.o.tabstop = tab_spaces
vim.opt.expandtab = false

-- scroll offset
local scroll_offset = 8
vim.o.sidescrolloff = scroll_offset
vim.o.scrolloff = scroll_offset
vim.o.sidescroll = 1

-- backup
vim.o.backup = true
vim.o.backupdir = vim.fn.stdpath 'data' .. '/backup'

-- undo
vim.o.undodir = vim.fn.stdpath 'data' .. '/undo'
vim.o.undofile = true

-- swap
vim.o.directory = vim.fn.stdpath 'data' .. '/swap'
vim.o.swapfile = true

-- disable native plugins
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_python_provider = 0
vim.g.loaded_ruby_provider = 0

-- folding
vim.o.fillchars = 'eob: ,fold: ,foldopen:,foldsep: ,foldclose:'
vim.o.foldcolumn = '1'
vim.o.foldenable = true
vim.o.foldexpr = 'v:lua.vim.lsp.foldexpr()'
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldmethod = 'expr'

-- other
-- vim.g.did_load_filetypes = 0
vim.g.do_filetype_lua = 1
vim.o.background = 'dark'
vim.o.clipboard = 'unnamedplus'
vim.o.cmdheight = 0
vim.o.compatible = false
vim.o.cursorline = true
vim.o.errorbells = false
vim.o.fillchars = 'eob: '
vim.o.hidden = true
vim.o.hlsearch = true
vim.o.ignorecase = true
vim.o.inccommand = 'split'
vim.o.incsearch = true
vim.o.modeline = false
vim.o.mouse = 'a'
vim.o.mousemodel = ''
vim.o.pumblend = 0
vim.o.showcmd = true
vim.o.showmode = false
vim.o.showtabline = 1
vim.o.signcolumn = 'yes'
vim.o.smartcase = true
vim.o.spelllang = 'en_us'
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.termguicolors = true
vim.o.timeout = true
vim.o.timeoutlen = 300
vim.o.updatetime = 250
vim.o.visualbell = true
vim.o.winblend = 0
vim.o.wrap = false
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }
