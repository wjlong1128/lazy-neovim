return {
  -- cmdline
  {
    "folke/noice.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
  },
  -- explore
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    tag = "nightly",
    lazy = false,
  },
  -- them
  { "svrana/neosolarized.nvim", dependencies = "tjdevries/colorbuddy.nvim", lazy = false },
  -- Lsp and Mason
  "williamboman/mason.nvim",
  "neovim/nvim-lspconfig",
  "williamboman/mason-lspconfig.nvim",
  {
    "glepnir/lspsaga.nvim",
    event = "BufRead",
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
  }, -- high
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  -- Text
  "numToStr/Comment.nvim", --gcc
  "rmagatti/alternate-toggler", -- false/true
  "mg979/vim-visual-multi", -- C-n
  "gcmt/wildfire.vim", -- ' " ( {
  "tpope/vim-surround", -- https://github.com/tpope/vim-surround
  "windwp/nvim-autopairs",
  "jose-elias-alvarez/null-ls.nvim", -- serach
  {
    "nvim-telescope/telescope.nvim",
    version = "0.1.1",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  "nvim-telescope/telescope-file-browser.nvim",
  -- line
  {
    "nvim-lualine/lualine.nvim",
    lazy = false,
    dependencies = { { "kyazdani42/nvim-web-devicons", name = "lua-devicons", lazy = true } },
  },
  { "akinsho/bufferline.nvim", version = "v3.*", dependecies = "nvim-tree/nvim-web-devicons", lazy = false },

  -- bookmark
  "MattesGroeger/vim-bookmarks",
  "tom-anders/telescope-vim-bookmarks.nvim",
  -- MarkDown
  {
    "iamcco/markdown-preview.nvim",
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
  "img-paste-devs/img-paste.vim",
  -- git
  "f-person/git-blame.nvim",

  -- CMP
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "hrsh7th/nvim-cmp",
  "onsails/lspkind.nvim",

  -- Snip
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",
}
