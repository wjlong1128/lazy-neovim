require('plugins')
require('pkeys')

require('lsp.mason')
require('lsp.lsp')
require('lsp.cmp')
require('lsp.lspsaga')
require('lsp.null_ls')

require('config.tree')
require('config.lua_line')
require('config.bufferline')
require('config.text')
require('config.telescope')
require('config.term')
require('config.lua_snip')
--require('config.vim_go')
require('config.markdown')
require('config.pretter')
require('config.transparent')
require('config.todo')

local thems = require 'config.themes'
thems.neosolarized();
-- thems.colorizer();

local Extends = {}

function Extends.env(linux)
  require('base_run').is_linux(linux)
  require('config.treesitter').langlist(linux, { 'c', 'vim', 'lua', 'help', 'rust', 'c', 'go' })
  require('config.lua_snip').is_linux(linux)
end

return Extends
