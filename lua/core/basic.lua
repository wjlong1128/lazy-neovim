-- Encodeing
vim.opt.encoding	=	'UTF-8'
vim.opt.fileencoding     =       'UTF-8' 

-- Editer
vim.o.cmdheight = 0
vim.opt.number		=	true
vim.opt.relativenumber  =	true
vim.opt.tabstop		=	2
vim.opt.shiftwidth	= 	2
vim.opt.softtabstop 	=	2
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.autoindent=true 
vim.opt.smartindent=true
vim.opt.expandtab=true
vim.opt.list=false
vim.opt.listchars='space:.,tab:..'


-- Search
vim.opt.smartcase=true
vim.opt.ignorecase=true
vim.opt.incsearch=true
vim.opt.hlsearch=true

-- Warp
vim.opt.autoread=true
vim.b.autoread=true
vim.opt.backup=false
vim.opt.writebackup=false
vim.opt.swapfile=false
vim.opt.hidden=true

-- Auto
vim.opt.wildmenu = true
vim.opt.pumheight=10
vim.cmd [[au InsertLeave *.go,*.cpp write]]

-- Window
vim.opt.showmode=true
vim.opt.updatetime=300
vim.opt.splitbelow=true
vim.opt.splitright=true
vim.opt.showtabline=0
