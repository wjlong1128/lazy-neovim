local set = vim.keymap.set

vim.opt.timeoutlen=500
vim.g.mapleader=' '
vim.g.maplocalleader=' '


set('n','<space>w',':w<CR>')
set('n','<space>q',':q<CR>')
set('n','H','$')
set('n','L','^')
set('n','=','<C-a>')
set('n','-','<C-x>')

-- window
set('n','sc','<C-w>c')
set('n','so','<C-w>o')
set('n','ss',':split<CR>')
set('n','sv',':vsplit<CR>')
