vim.cmd [[packadd packer.nvim]]

require('packer').init({
  git = {
    default_url_format = "git@github.com:%s.git",
  }
})

return require('packer').startup({ function(use)
  use 'wbthomason/packer.nvim'
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }
  use "nvim-lua/plenary.nvim"
  use 'jose-elias-alvarez/null-ls.nvim'
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }
  use 'rmagatti/alternate-toggler' -- true/false
  use 'mg979/vim-visual-multi' -- C_n
  use 'gcmt/wildfire.vim' -- ' ' ( {
  use 'tpope/vim-surround' -- cs'" cs  ds yss) ds ysiw"
  use { 'numToStr/Comment.nvim', config = function() require('Comment').setup() end } -- gcc
  use 'windwp/nvim-autopairs'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }

  use 'sainnhe/everforest'
  use 'doums/darcula'
  use 'ellisonleao/gruvbox.nvim'
  -- 配套主题
  use { 'tjdevries/colorbuddy.nvim', requires = { { 'svrana/neosolarized.nvim' } } }
  -- CMP
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'onsails/lspkind.nvim'
  --
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use { 'jose-elias-alvarez/null-ls.nvim', requires = 'nvim-lua/plenary.nvim' }
  use 'MunifTanjim/prettier.nvim'


  use { "akinsho/toggleterm.nvim", tag = '*' }


  use 'voldikss/vim-translator'
  use({
    "iamcco/markdown-preview.nvim",
    run = function()
      vim.fn["mkdp#util#install"]()
    end,
  })
  use({ "img-paste-devs/img-paste.vim" })

  use({ "glepnir/lspsaga.nvim", branch = "main", config = function() require("lspsaga").setup({}) end,
    requires = { { "nvim-tree/nvim-web-devicons" } } })
  -- 显示颜色
  -- use 'norcalli/nvim-colorizer.lua'
  use 'xiyaowong/nvim-transparent'
  -- TODO and bookmark
  use { "folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim" }
  use 'MattesGroeger/vim-bookmarks' 
  use 'tom-anders/telescope-vim-bookmarks.nvim'
  -- git
  use 'f-person/git-blame.nvim'
end,
  config = {
    display = {
      open_fn = require('packer.util').float
    }
  } })
