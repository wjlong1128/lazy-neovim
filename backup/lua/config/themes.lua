local Theme = {}

function Theme.everforest()
  vim.cmd([[colorscheme everforest]])
end

function Theme.two()
  vim.cmd([[colorscheme darcula]])
end

function Theme.gruvbox()
  vim.o.background = "dark" -- or "light" for light mode
  vim.cmd([[colorscheme gruvbox]])
  -- setup must be called before loading the colorscheme
  -- Default options:
  require("gruvbox").setup({
    undercurl = true,
    underline = true,
    bold = true,
    italic = false,
    strikethrough = true,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = true, -- invert background for search, diffs, statuslines and errors
    contrast = "", -- can be "hard", "soft" or empty string
    palette_overrides = {},
    overrides = {},
    dim_inactive = false,
    transparent_mode = false,
  })
  vim.cmd("colorscheme gruvbox")
end

function Theme.neosolarized()
  require('colorbuddy').setup()
  vim.cmd [[set termguicolors]]
  require('neosolarized').setup({
    comment_italics = false,
    background_set = false,
  })
end

-- function Theme.colorizer()
--   vim.cmd [[set termguicolors]]
--   require 'colorizer'.setup()
-- end

return Theme
