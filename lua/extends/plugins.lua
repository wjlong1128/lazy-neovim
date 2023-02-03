return {
  -- cmdline
  {
    "folke/noice.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  },
  -- explore
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {'nvim-tree/nvim-web-devicons'},
    tag = 'nightly'
  },
  -- them 
  {'svrana/neosolarized.nvim',dependencies = 'tjdevries/colorbuddy.nvim'} 
}
