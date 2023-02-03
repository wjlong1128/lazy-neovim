local map = vim.keymap.set
-- 按键点击间隔
vim.o.timeoutlen = 500

-- <leader>= " "
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--keys
map('n', '<space>w', ':w<CR>')
map('n', '<space>q', ':q<CR>')
map('n', '<space>wq', ':wq<CR>')

map('n', 'H', '^')
map('n', 'L', '$')
-- window keys
map('n', 'sv', ':vsplit<CR>')
map('n', 'sp', ':split<CR>')
map('n', 'sc', '<C-w>c')
map('n', 'so', '<C-w>o')
-- Atl + hjkl 换屏
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)

-- Increment
map('n', "=", '<C-a>', opt)
map('n', "-", '<C-x>', opt)

-- yank
map('v', ';y', '"+y')
