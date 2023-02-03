local map = vim.keymap.set

-- tree
map('n', ';e', ':NvimTreeToggle<CR>')

vim.keymap.set(
  "n",
  "<leader><space>", -- <space><space>
  "<cmd>lua require('alternate-toggler').toggleAlternate()<CR>"
)

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})




map('n', '<space>te', ':ToggleTerm size=10<CR>')

-- BufferLine
map('n', '<A-[>', ':BufferLineGoToBuffer 1<CR>')
map('n', '<A-]>', ':BufferLineGoToBuffer -1<CR>')
map('n', 'xb', ':BufferLinePickClose<CR>')

-- bookmark
--[[
Add/remove bookmark at current line 	mm 	:BookmarkToggle
Add/edit/remove annotation at current line 	mi 	:BookmarkAnnotate <TEXT>
Jump to next bookmark in buffer 	mn 	:BookmarkNext
Jump to previous bookmark in buffer 	mp 	:BookmarkPrev
Show all bookmarks (toggle) 	ma 	:BookmarkShowAll
Clear bookmarks in current buffer only 	mc 	:BookmarkClear
Clear bookmarks in all buffers 	mx 	:BookmarkClearAll
Move up bookmark at current line 	[count]mkk 	:BookmarkMoveUp [<COUNT>]
Move down bookmark at current line 	[count]mjj 	:BookmarkMoveDown [<COUNT>]
Move bookmark at current line to another line 	[count]mg 	:BookmarkMoveToLine <LINE>
将所有书签保存到一个文件 		:BookmarkSave <FILE_PATH>
从文件加载书签 		:BookmarkLoad <FILE_PATH>
--]]
map('n', '<leader>fm', ':Telescope vim_bookmarks all<CR>', {})
map('n', '<leader>cm', ':Telescope vim_bookmarks current_file<CR>', {})
