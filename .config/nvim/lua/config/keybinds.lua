vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.keymap.set('n', '<leader>h', vim.cmd.nohlsearch)
vim.keymap.set('n', '<leader>s', '<CMD>setlocal spell!<CR>')
vim.keymap.set('n', '<C-h>', '<C-w><C-h>') -- focus window left
vim.keymap.set('n', '<C-l>', '<C-w><C-l>') -- focus window right
vim.keymap.set('n', '<C-j>', '<C-w><C-j>') -- focus window bottom
vim.keymap.set('n', '<C-k>', '<C-w><C-k>') -- focus window up
